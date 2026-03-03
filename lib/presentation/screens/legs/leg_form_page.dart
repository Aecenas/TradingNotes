import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/enums.dart';
import '../../../core/formatters.dart';
import '../../../domain/entities/leg.dart';
import '../../providers.dart';
import '../../widgets/form_widgets.dart';

class LegFormPage extends ConsumerStatefulWidget {
  const LegFormPage({super.key, this.tradeId, this.legId});

  final String? tradeId;
  final String? legId;

  @override
  ConsumerState<LegFormPage> createState() => _LegFormPageState();
}

class _LegFormPageState extends ConsumerState<LegFormPage> {
  final _formKey = GlobalKey<FormState>();

  final _symbolController = TextEditingController();
  final _nameController = TextEditingController();
  final _leverageController = TextEditingController();
  final _accountController = TextEditingController();
  final _currencyController = TextEditingController();
  final _entryPriceController = TextEditingController();
  final _stopLossController = TextEditingController();
  final _riskBudgetController = TextEditingController();
  final _atrController = TextEditingController();
  final _noteController = TextEditingController();
  final _sortOrderController = TextEditingController(text: '0');

  Direction _direction = Direction.long;
  InstrumentType _instrumentType = InstrumentType.perp;

  bool _loading = false;
  bool _saving = false;
  Leg? _existing;

  bool get _isEdit => widget.legId != null;

  @override
  void initState() {
    super.initState();
    if (_isEdit) {
      _loadLeg();
    }
  }

  @override
  void dispose() {
    _symbolController.dispose();
    _nameController.dispose();
    _leverageController.dispose();
    _accountController.dispose();
    _currencyController.dispose();
    _entryPriceController.dispose();
    _stopLossController.dispose();
    _riskBudgetController.dispose();
    _atrController.dispose();
    _noteController.dispose();
    _sortOrderController.dispose();
    super.dispose();
  }

  Future<void> _loadLeg() async {
    setState(() => _loading = true);
    final result = await ref
        .read(legRepositoryProvider)
        .getLegById(widget.legId!);
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

    final leg = result.requireData();
    _existing = leg;
    _symbolController.text = leg.symbol;
    _nameController.text = leg.name ?? '';
    _leverageController.text = leg.leverage?.toString() ?? '';
    _accountController.text = leg.account ?? '';
    _currencyController.text = leg.currency ?? '';
    _entryPriceController.text = leg.initialPlanEntryPrice?.toString() ?? '';
    _stopLossController.text = leg.initialStopLoss?.toString() ?? '';
    _riskBudgetController.text = leg.initialRiskBudget?.toString() ?? '';
    _atrController.text = leg.initialAtr?.toString() ?? '';
    _noteController.text = leg.note ?? '';
    _sortOrderController.text = leg.sortOrder.toString();
    _direction = leg.direction;
    _instrumentType = leg.instrumentType;

    setState(() => _loading = false);
  }

  Future<void> _save() async {
    if (_formKey.currentState?.validate() != true) {
      return;
    }

    final tradeId = _existing?.tradeId ?? widget.tradeId;
    if (tradeId == null || tradeId.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('缺少 tradeId，无法创建 Leg')));
      return;
    }

    setState(() => _saving = true);

    final now = nowUtc();
    final leg = Leg(
      id: _existing?.id ?? ref.read(uuidProvider).v4(),
      tradeId: tradeId,
      symbol: _symbolController.text.trim(),
      name: _nameController.text.trim().isEmpty
          ? null
          : _nameController.text.trim(),
      direction: _direction,
      instrumentType: _instrumentType,
      leverage: parseNullableDouble(_leverageController.text),
      account: _accountController.text.trim().isEmpty
          ? null
          : _accountController.text.trim(),
      currency: _currencyController.text.trim().isEmpty
          ? null
          : _currencyController.text.trim(),
      initialPlanEntryPrice: parseNullableDouble(_entryPriceController.text),
      initialStopLoss: parseNullableDouble(_stopLossController.text),
      initialRiskBudget: parseNullableDouble(_riskBudgetController.text),
      initialAtr: parseNullableDouble(_atrController.text),
      note: _noteController.text.trim().isEmpty
          ? null
          : _noteController.text.trim(),
      sortOrder: parseNullableInt(_sortOrderController.text) ?? 0,
      createdAt: _existing?.createdAt ?? now,
      updatedAt: now,
    );

    final result = await ref.read(upsertLegUseCaseProvider)(leg);
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
    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? '编辑 Leg' : '新建 Leg')),
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
                      TextFormField(
                        controller: _symbolController,
                        decoration: const InputDecoration(
                          labelText: '标的 Symbol *',
                        ),
                        validator: _requiredValidator,
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(labelText: '标的名称'),
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<Direction>(
                        value: _direction,
                        decoration: const InputDecoration(labelText: '方向'),
                        items: Direction.values
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.label),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          if (value != null) {
                            setState(() => _direction = value);
                          }
                        },
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<InstrumentType>(
                        value: _instrumentType,
                        decoration: const InputDecoration(labelText: '工具类型'),
                        items: InstrumentType.values
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.label),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          if (value != null) {
                            setState(() => _instrumentType = value);
                          }
                        },
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _leverageController,
                        decoration: const InputDecoration(labelText: '杠杆'),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _accountController,
                        decoration: const InputDecoration(labelText: '账户 / 平台'),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _currencyController,
                        decoration: const InputDecoration(labelText: '计价货币'),
                      ),
                    ],
                  ),
                  LabeledSection(
                    title: '初始计划参数',
                    children: [
                      TextFormField(
                        controller: _entryPriceController,
                        decoration: const InputDecoration(labelText: '初始计划开仓价'),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _stopLossController,
                        decoration: const InputDecoration(labelText: '初始止损位'),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _riskBudgetController,
                        decoration: const InputDecoration(labelText: '初始风险额度'),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _atrController,
                        decoration: const InputDecoration(labelText: '初始 ATR'),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _sortOrderController,
                        decoration: const InputDecoration(labelText: '排序值'),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _noteController,
                        decoration: const InputDecoration(labelText: '备注'),
                        maxLines: 2,
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
                    label: Text(_saving ? '保存中...' : '保存 Leg'),
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
