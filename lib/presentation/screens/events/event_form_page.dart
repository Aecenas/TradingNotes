import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;

import '../../../core/enums.dart';
import '../../../core/formatters.dart';
import '../../../domain/entities/event.dart';
import '../../../domain/entities/leg.dart';
import '../../providers.dart';
import '../../widgets/form_widgets.dart';

class EventFormPage extends ConsumerStatefulWidget {
  const EventFormPage({
    super.key,
    this.eventId,
    this.tradeId,
    this.scope,
    this.legId,
  });

  final String? eventId;
  final String? tradeId;
  final String? scope;
  final String? legId;

  @override
  ConsumerState<EventFormPage> createState() => _EventFormPageState();
}

class _EventFormPageState extends ConsumerState<EventFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _picker = ImagePicker();

  final _titleController = TextEditingController();
  final _noteController = TextEditingController();

  final _priceController = TextEditingController();
  final _quantityController = TextEditingController();
  final _notionalController = TextEditingController();
  final _riskDeltaController = TextEditingController();
  final _stopLossBeforeController = TextEditingController();
  final _stopLossAfterController = TextEditingController();
  final _targetBeforeController = TextEditingController();
  final _targetAfterController = TextEditingController();
  final _atrController = TextEditingController();
  final _reasonController = TextEditingController();
  final _pnlRealizedController = TextEditingController();
  final _relatedMarketContextController = TextEditingController();

  ScopeType _scopeType = ScopeType.trade;
  EventType _eventType = EventType.generalNote;
  DateTime _eventTime = nowUtc();
  String? _tradeId;
  String? _selectedLegId;

  final List<XFile> _pendingImages = [];
  List<EventAttachment> _attachments = [];
  List<Leg> _legs = const [];

  bool _loading = false;
  bool _saving = false;
  Event? _existing;

  bool get _isEdit => widget.eventId != null;

  @override
  void initState() {
    super.initState();
    _tradeId = widget.tradeId;
    _scopeType = widget.scope == 'leg' ? ScopeType.leg : ScopeType.trade;
    _selectedLegId = widget.legId;

    if (_isEdit) {
      _loadEvent();
    } else {
      _syncDefaultEventType();
      _loadLegs();
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _noteController.dispose();
    _priceController.dispose();
    _quantityController.dispose();
    _notionalController.dispose();
    _riskDeltaController.dispose();
    _stopLossBeforeController.dispose();
    _stopLossAfterController.dispose();
    _targetBeforeController.dispose();
    _targetAfterController.dispose();
    _atrController.dispose();
    _reasonController.dispose();
    _pnlRealizedController.dispose();
    _relatedMarketContextController.dispose();
    super.dispose();
  }

  Future<void> _loadEvent() async {
    setState(() => _loading = true);
    final result = await ref
        .read(eventRepositoryProvider)
        .getEventById(widget.eventId!);
    if (!mounted) {
      return;
    }

    if (result.isFailure) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(result.error!.message)));
      Navigator.of(context).pop();
      return;
    }

    final event = result.requireData();
    _existing = event;
    _tradeId = event.tradeId;
    _scopeType = event.scopeType;
    _eventType = event.eventType;
    _eventTime = event.eventTime;
    _selectedLegId = event.legId;
    _attachments = List.of(event.attachments);

    _titleController.text = event.title ?? '';
    _noteController.text = event.note;
    _priceController.text = event.price?.toString() ?? '';
    _quantityController.text = event.quantity?.toString() ?? '';
    _notionalController.text = event.notional?.toString() ?? '';
    _riskDeltaController.text = event.riskDelta?.toString() ?? '';
    _stopLossBeforeController.text = event.stopLossBefore?.toString() ?? '';
    _stopLossAfterController.text = event.stopLossAfter?.toString() ?? '';
    _targetBeforeController.text = event.targetBefore?.toString() ?? '';
    _targetAfterController.text = event.targetAfter?.toString() ?? '';
    _atrController.text = event.atr?.toString() ?? '';
    _reasonController.text = event.reason ?? '';
    _pnlRealizedController.text = event.pnlRealized?.toString() ?? '';
    _relatedMarketContextController.text = event.relatedMarketContext ?? '';

    await _loadLegs();
    if (mounted) {
      setState(() => _loading = false);
    }
  }

  Future<void> _loadLegs() async {
    if (_tradeId == null || _tradeId!.isEmpty) {
      return;
    }
    final result = await ref
        .read(legRepositoryProvider)
        .getLegsByTrade(_tradeId!);
    if (!mounted || result.isFailure) {
      return;
    }
    setState(() {
      _legs = result.data ?? const [];
      if (_scopeType == ScopeType.leg &&
          _selectedLegId == null &&
          _legs.isNotEmpty) {
        _selectedLegId = _legs.first.id;
      }
    });
  }

  List<EventType> _availableEventTypes() {
    if (_scopeType == ScopeType.trade) {
      return [
        EventType.marketEvent,
        EventType.thesisUpdate,
        EventType.planUpdate,
        EventType.generalNote,
      ];
    }
    return [
      EventType.open,
      EventType.add,
      EventType.reduce,
      EventType.close,
      EventType.moveStop,
      EventType.moveTarget,
      EventType.hedge,
      EventType.roll,
      EventType.generalNote,
    ];
  }

  void _syncDefaultEventType() {
    final options = _availableEventTypes();
    if (!options.contains(_eventType)) {
      _eventType = options.first;
    }
  }

  Future<void> _pickEventTime() async {
    final date = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      initialDate: _eventTime.toLocal(),
    );
    if (date == null || !mounted) {
      return;
    }
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_eventTime.toLocal()),
    );
    if (time == null) {
      return;
    }
    setState(() {
      _eventTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      ).toUtc();
    });
  }

  Future<void> _addImages() async {
    final files = await _picker.pickMultiImage(
      maxWidth: 2048,
      maxHeight: 2048,
      imageQuality: 80,
    );
    if (files.isEmpty || !mounted) {
      return;
    }
    setState(() {
      _pendingImages.addAll(files);
    });
  }

  bool _hasStructuredData() {
    final structuredFields = [
      _titleController.text.trim(),
      _priceController.text.trim(),
      _quantityController.text.trim(),
      _notionalController.text.trim(),
      _riskDeltaController.text.trim(),
      _stopLossBeforeController.text.trim(),
      _stopLossAfterController.text.trim(),
      _targetBeforeController.text.trim(),
      _targetAfterController.text.trim(),
      _atrController.text.trim(),
      _reasonController.text.trim(),
      _pnlRealizedController.text.trim(),
      _relatedMarketContextController.text.trim(),
    ];
    return structuredFields.any((v) => v.isNotEmpty);
  }

  Future<void> _save() async {
    if (_formKey.currentState?.validate() != true) {
      return;
    }
    if (_tradeId == null || _tradeId!.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('缺少 tradeId，无法创建 Event')));
      return;
    }
    if (_scopeType == ScopeType.leg &&
        (_selectedLegId == null || _selectedLegId!.isEmpty)) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Leg 级事件必须选择 Leg')));
      return;
    }
    if (!_hasStructuredData()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Event 不能只有自由文字，请至少填写一个结构化字段。')),
      );
      return;
    }

    setState(() => _saving = true);

    final eventId = _existing?.id ?? ref.read(uuidProvider).v4();
    final now = nowUtc();
    final attachmentService = ref.read(attachmentServiceProvider);
    final generatedAttachments = <EventAttachment>[];

    for (final file in _pendingImages) {
      final relativePath = await attachmentService.saveImageFile(
        sourcePath: file.path,
        originalName: p.basename(file.path),
      );
      generatedAttachments.add(
        EventAttachment(
          id: ref.read(uuidProvider).v4(),
          eventId: eventId,
          relativePath: relativePath,
          originalName: p.basename(file.path),
          mimeType: _guessImageMime(file.path),
          createdAt: now,
        ),
      );
    }

    final event = Event(
      id: eventId,
      tradeId: _tradeId!,
      scopeType: _scopeType,
      legId: _scopeType == ScopeType.leg ? _selectedLegId : null,
      eventType: _eventType,
      eventTime: _eventTime,
      title: _titleController.text.trim().isEmpty
          ? null
          : _titleController.text.trim(),
      note: _noteController.text.trim(),
      attachments: [..._attachments, ...generatedAttachments],
      price: parseNullableDouble(_priceController.text),
      quantity: parseNullableDouble(_quantityController.text),
      notional: parseNullableDouble(_notionalController.text),
      riskDelta: parseNullableDouble(_riskDeltaController.text),
      stopLossBefore: parseNullableDouble(_stopLossBeforeController.text),
      stopLossAfter: parseNullableDouble(_stopLossAfterController.text),
      targetBefore: parseNullableDouble(_targetBeforeController.text),
      targetAfter: parseNullableDouble(_targetAfterController.text),
      atr: parseNullableDouble(_atrController.text),
      reason: _reasonController.text.trim().isEmpty
          ? null
          : _reasonController.text.trim(),
      pnlRealized: parseNullableDouble(_pnlRealizedController.text),
      relatedMarketContext: _relatedMarketContextController.text.trim().isEmpty
          ? null
          : _relatedMarketContextController.text.trim(),
      createdAt: _existing?.createdAt ?? now,
      updatedAt: now,
    );

    final result = _isEdit
        ? await ref.read(updateEventUseCaseProvider).call(event)
        : await ref.read(createEventUseCaseProvider).call(event);

    if (!mounted) {
      return;
    }

    setState(() => _saving = false);

    if (result.isFailure) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(result.error!.message)));
      return;
    }

    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final options = _availableEventTypes();
    if (!options.contains(_eventType)) {
      _eventType = options.first;
    }

    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? '编辑 Event' : '新建 Event')),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.all(12),
                children: [
                  LabeledSection(
                    title: '基础信息',
                    children: [
                      DropdownButtonFormField<ScopeType>(
                        value: _scopeType,
                        decoration: const InputDecoration(labelText: '作用域'),
                        items: ScopeType.values
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.label),
                              ),
                            )
                            .toList(),
                        onChanged: _isEdit
                            ? null
                            : (value) {
                                if (value != null) {
                                  setState(() {
                                    _scopeType = value;
                                    _syncDefaultEventType();
                                  });
                                }
                              },
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<EventType>(
                        value: _eventType,
                        decoration: const InputDecoration(labelText: '事件类型'),
                        items: options
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.label),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          if (value != null) {
                            setState(() => _eventType = value);
                          }
                        },
                      ),
                      if (_scopeType == ScopeType.leg) ...[
                        const SizedBox(height: 8),
                        DropdownButtonFormField<String>(
                          value: _selectedLegId,
                          decoration: const InputDecoration(
                            labelText: '选择 Leg',
                          ),
                          items: _legs
                              .map(
                                (leg) => DropdownMenuItem(
                                  value: leg.id,
                                  child: Text(
                                    '${leg.symbol} (${leg.direction.label})',
                                  ),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            setState(() => _selectedLegId = value);
                          },
                        ),
                      ],
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _titleController,
                        decoration: const InputDecoration(labelText: '事件标题'),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _noteController,
                        decoration: const InputDecoration(labelText: '备注 *'),
                        maxLines: 3,
                        validator: _requiredValidator,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Text('事件时间: ${formatDateTime(_eventTime)}'),
                          ),
                          TextButton.icon(
                            onPressed: _pickEventTime,
                            icon: const Icon(Icons.schedule),
                            label: const Text('修改'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  LabeledSection(
                    title: '结构化字段',
                    children: _buildDynamicFields(),
                  ),
                  LabeledSection(
                    title: '图片附件',
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: OutlinedButton.icon(
                          onPressed: _addImages,
                          icon: const Icon(Icons.photo),
                          label: const Text('添加图片'),
                        ),
                      ),
                      if (_attachments.isNotEmpty)
                        ..._attachments.map(
                          (attachment) => ListTile(
                            dense: true,
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(Icons.image_outlined),
                            title: Text(attachment.originalName),
                            subtitle: Text(attachment.relativePath),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete_outline),
                              onPressed: () {
                                setState(() {
                                  _attachments = _attachments
                                      .where((e) => e.id != attachment.id)
                                      .toList();
                                });
                              },
                            ),
                          ),
                        ),
                      if (_pendingImages.isNotEmpty)
                        ..._pendingImages.asMap().entries.map(
                          (entry) => ListTile(
                            dense: true,
                            contentPadding: EdgeInsets.zero,
                            leading: Image.file(
                              File(entry.value.path),
                              width: 36,
                              height: 36,
                              fit: BoxFit.cover,
                            ),
                            title: Text(p.basename(entry.value.path)),
                            subtitle: const Text('待保存'),
                            trailing: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                setState(() {
                                  _pendingImages.removeAt(entry.key);
                                });
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  FilledButton.icon(
                    onPressed: _saving ? null : _save,
                    icon: _saving
                        ? const SizedBox(
                            width: 14,
                            height: 14,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.save),
                    label: Text(_saving ? '保存中...' : '保存 Event'),
                  ),
                ],
              ),
            ),
    );
  }

  List<Widget> _buildDynamicFields() {
    final widgets = <Widget>[];

    bool showTradeFields = _scopeType == ScopeType.trade;
    bool showLegActionFields = _scopeType == ScopeType.leg;

    if (showTradeFields &&
        (_eventType == EventType.marketEvent ||
            _eventType == EventType.thesisUpdate ||
            _eventType == EventType.planUpdate)) {
      widgets.add(
        TextFormField(
          controller: _relatedMarketContextController,
          decoration: const InputDecoration(labelText: '市场事件/判断变化描述'),
          maxLines: 2,
        ),
      );
      widgets.add(const SizedBox(height: 8));
      widgets.add(
        TextFormField(
          controller: _reasonController,
          decoration: const InputDecoration(labelText: '对 Thesis 的影响 / 理由'),
          maxLines: 2,
        ),
      );
      widgets.add(const SizedBox(height: 8));
    }

    if (showLegActionFields &&
        (_eventType == EventType.open ||
            _eventType == EventType.add ||
            _eventType == EventType.reduce ||
            _eventType == EventType.close)) {
      widgets.addAll([
        TextFormField(
          controller: _priceController,
          decoration: const InputDecoration(labelText: '价格'),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _quantityController,
          decoration: const InputDecoration(labelText: '数量'),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _notionalController,
          decoration: const InputDecoration(labelText: '名义市值'),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _riskDeltaController,
          decoration: const InputDecoration(labelText: '风险增量'),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        const SizedBox(height: 8),
      ]);
    }

    if (_eventType == EventType.moveStop) {
      widgets.addAll([
        TextFormField(
          controller: _stopLossBeforeController,
          decoration: const InputDecoration(labelText: '原止损位'),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _stopLossAfterController,
          decoration: const InputDecoration(labelText: '新止损位'),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        const SizedBox(height: 8),
      ]);
    }

    if (_eventType == EventType.moveTarget) {
      widgets.addAll([
        TextFormField(
          controller: _targetBeforeController,
          decoration: const InputDecoration(labelText: '原目标位'),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _targetAfterController,
          decoration: const InputDecoration(labelText: '新目标位'),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        const SizedBox(height: 8),
      ]);
    }

    if (_eventType == EventType.close || _eventType == EventType.reduce) {
      widgets.add(
        TextFormField(
          controller: _pnlRealizedController,
          decoration: const InputDecoration(labelText: '已实现 PnL'),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
      );
      widgets.add(const SizedBox(height: 8));
    }

    if (_eventType == EventType.hedge || _eventType == EventType.roll) {
      widgets.add(
        TextFormField(
          controller: _atrController,
          decoration: const InputDecoration(labelText: 'ATR / 波动参数'),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
      );
      widgets.add(const SizedBox(height: 8));
    }

    widgets.add(
      TextFormField(
        controller: _reasonController,
        decoration: const InputDecoration(labelText: '理由 / 原因'),
      ),
    );

    return widgets;
  }

  String? _requiredValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return '必填';
    }
    return null;
  }

  String _guessImageMime(String path) {
    final ext = p.extension(path).toLowerCase();
    switch (ext) {
      case '.png':
        return 'image/png';
      case '.webp':
        return 'image/webp';
      case '.heic':
        return 'image/heic';
      case '.jpg':
      case '.jpeg':
      default:
        return 'image/jpeg';
    }
  }
}
