import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/formatters.dart';
import '../../../domain/entities/trade.dart';
import '../../providers.dart';
import '../../widgets/form_widgets.dart';
import '../../widgets/tag_input_helper.dart';

class TradeFormPage extends ConsumerStatefulWidget {
  const TradeFormPage({super.key, this.tradeId});

  final String? tradeId;

  @override
  ConsumerState<TradeFormPage> createState() => _TradeFormPageState();
}

class _TradeFormPageState extends ConsumerState<TradeFormPage> {
  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _entryReasonController = TextEditingController();
  final _thesisController = TextEditingController();
  final _expectationController = TextEditingController();
  final _invalidationController = TextEditingController();
  final _tagsController = TextEditingController();

  MarketType _market = MarketType.crypto;
  StrategyType _strategyType = StrategyType.trendFollowing;
  StructureType _structureType = StructureType.singleDirectional;
  TradeStatus _status = TradeStatus.active;
  DateTime _startTime = nowUtc();

  bool _loading = false;
  bool _saving = false;
  Trade? _existingTrade;

  bool get _isEdit => widget.tradeId != null;

  @override
  void initState() {
    super.initState();
    if (_isEdit) {
      _loadTrade();
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _entryReasonController.dispose();
    _thesisController.dispose();
    _expectationController.dispose();
    _invalidationController.dispose();
    _tagsController.dispose();
    super.dispose();
  }

  Future<void> _loadTrade() async {
    setState(() => _loading = true);
    final result = await ref
        .read(tradeRepositoryProvider)
        .getTradeById(widget.tradeId!);
    if (!mounted) {
      return;
    }

    if (result.isFailure) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(result.error!.message)));
      context.pop();
      return;
    }

    final trade = result.requireData();
    _existingTrade = trade;
    _titleController.text = trade.title;
    _entryReasonController.text = trade.entryReason;
    _thesisController.text = trade.thesis ?? '';
    _expectationController.text = trade.expectation ?? '';
    _invalidationController.text = trade.invalidationCondition ?? '';
    _tagsController.text = trade.tags.join(', ');

    _market = trade.market;
    _strategyType = trade.strategyType;
    _structureType = trade.structureType;
    _status = trade.status;
    _startTime = trade.startTime;

    setState(() => _loading = false);
  }

  Future<void> _pickStartTime() async {
    final date = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      initialDate: _startTime.toLocal(),
    );
    if (date == null || !mounted) {
      return;
    }
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_startTime.toLocal()),
    );
    if (time == null) {
      return;
    }

    setState(() {
      _startTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      ).toUtc();
    });
  }

  Future<void> _saveTrade() async {
    final form = _formKey.currentState;
    if (form == null || !form.validate()) {
      return;
    }

    setState(() => _saving = true);

    final now = nowUtc();
    final id = widget.tradeId ?? ref.read(uuidProvider).v4();

    final trade = Trade(
      id: id,
      title: _titleController.text.trim(),
      market: _market,
      strategyType: _strategyType,
      structureType: _structureType,
      thesis: _thesisController.text.trim().isEmpty
          ? null
          : _thesisController.text.trim(),
      entryReason: _entryReasonController.text.trim(),
      expectation: _expectationController.text.trim().isEmpty
          ? null
          : _expectationController.text.trim(),
      invalidationCondition: _invalidationController.text.trim().isEmpty
          ? null
          : _invalidationController.text.trim(),
      tags: parseTagsInput(_tagsController.text),
      status: _status,
      startTime: _startTime,
      endTime: _existingTrade?.endTime,
      summaryPnl: _existingTrade?.summaryPnl,
      reviewText: _existingTrade?.reviewText,
      reviewScoreExecution: _existingTrade?.reviewScoreExecution,
      reviewScoreResult: _existingTrade?.reviewScoreResult,
      reviewPlanFollowed: _existingTrade?.reviewPlanFollowed,
      reviewErrorTags: _existingTrade?.reviewErrorTags ?? const [],
      createdAt: _existingTrade?.createdAt ?? now,
      updatedAt: now,
    );

    final result = _isEdit
        ? await ref.read(updateTradeUseCaseProvider).call(trade)
        : await ref.read(createTradeUseCaseProvider).call(trade);

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

    if (_isEdit) {
      if (context.canPop()) {
        context.pop(true);
      } else {
        context.go('/trades/$id');
      }
      return;
    }

    context.pushReplacement('/trades/$id');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? '编辑 Trade' : '新建 Trade')),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.all(12),
                children: [
                  LabeledSection(
                    title: '必填信息',
                    children: [
                      TextFormField(
                        controller: _titleController,
                        decoration: const InputDecoration(
                          labelText: '标题 / 主题 *',
                        ),
                        validator: _requiredValidator,
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<MarketType>(
                        value: _market,
                        decoration: const InputDecoration(labelText: '市场 *'),
                        items: MarketType.values
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.label),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          if (value != null) {
                            setState(() => _market = value);
                          }
                        },
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<StrategyType>(
                        value: _strategyType,
                        decoration: const InputDecoration(labelText: '策略类型 *'),
                        items: StrategyType.values
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.label),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          if (value != null) {
                            setState(() => _strategyType = value);
                          }
                        },
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<StructureType>(
                        value: _structureType,
                        decoration: const InputDecoration(labelText: '结构类型 *'),
                        items: StructureType.values
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.label),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          if (value != null) {
                            setState(() => _structureType = value);
                          }
                        },
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _entryReasonController,
                        decoration: const InputDecoration(labelText: '开仓理由 *'),
                        maxLines: 2,
                        validator: _requiredValidator,
                      ),
                    ],
                  ),
                  LabeledSection(
                    title: '可选信息',
                    children: [
                      TextFormField(
                        controller: _thesisController,
                        decoration: const InputDecoration(labelText: 'Thesis'),
                        maxLines: 2,
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _expectationController,
                        decoration: const InputDecoration(labelText: '预期'),
                        maxLines: 2,
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _invalidationController,
                        decoration: const InputDecoration(labelText: '失效条件'),
                        maxLines: 2,
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _tagsController,
                        decoration: const InputDecoration(
                          labelText: '标签（逗号分隔）',
                          hintText: 'BTC, 趋势跟随, 高把握',
                        ),
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<TradeStatus>(
                        value: _status,
                        decoration: const InputDecoration(labelText: '状态'),
                        items: TradeStatus.values
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.label),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          if (value != null) {
                            setState(() => _status = value);
                          }
                        },
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Text('开始时间: ${formatDateTime(_startTime)}'),
                          ),
                          TextButton.icon(
                            onPressed: _pickStartTime,
                            icon: const Icon(Icons.schedule),
                            label: const Text('修改'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  FilledButton.icon(
                    onPressed: _saving ? null : _saveTrade,
                    icon: _saving
                        ? const SizedBox(
                            width: 14,
                            height: 14,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.save),
                    label: Text(_saving ? '保存中...' : '保存'),
                  ),
                ],
              ),
            ),
    );
  }

  String? _requiredValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return '必填';
    }
    return null;
  }
}
