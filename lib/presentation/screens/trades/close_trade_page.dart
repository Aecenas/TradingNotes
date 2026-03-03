import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/formatters.dart';
import '../../../domain/entities/trade.dart';
import '../../providers.dart';
import '../../widgets/form_widgets.dart';
import '../../widgets/tag_input_helper.dart';

class CloseTradePage extends ConsumerStatefulWidget {
  const CloseTradePage({super.key, required this.tradeId});

  final String tradeId;

  @override
  ConsumerState<CloseTradePage> createState() => _CloseTradePageState();
}

class _CloseTradePageState extends ConsumerState<CloseTradePage> {
  final _formKey = GlobalKey<FormState>();

  final _exitReasonController = TextEditingController();
  final _summaryPnlController = TextEditingController();
  final _reviewTextController = TextEditingController();
  final _reviewTagsController = TextEditingController();

  DateTime _endTime = nowUtc();
  PlanFollowed _planFollowed = PlanFollowed.partial;
  int _executionScore = 3;
  int _resultScore = 3;

  bool _saving = false;

  @override
  void dispose() {
    _exitReasonController.dispose();
    _summaryPnlController.dispose();
    _reviewTextController.dispose();
    _reviewTagsController.dispose();
    super.dispose();
  }

  Future<void> _pickEndTime() async {
    final date = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      initialDate: _endTime.toLocal(),
    );
    if (date == null || !mounted) {
      return;
    }
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_endTime.toLocal()),
    );
    if (time == null) {
      return;
    }
    setState(() {
      _endTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      ).toUtc();
    });
  }

  Future<void> _submit() async {
    if (_formKey.currentState?.validate() != true) {
      return;
    }

    setState(() => _saving = true);

    final input = CloseTradeInput(
      endTime: _endTime,
      finalExitReason: _exitReasonController.text.trim(),
      summaryPnl: parseNullableDouble(_summaryPnlController.text),
      reviewPlanFollowed: _planFollowed,
      reviewScoreExecution: _executionScore,
      reviewScoreResult: _resultScore,
      reviewText: _reviewTextController.text.trim(),
      reviewErrorTags: parseTagsInput(_reviewTagsController.text),
    );

    final result = await ref.read(closeTradeUseCaseProvider)(
      widget.tradeId,
      input,
    );
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

    context.go('/trades/${widget.tradeId}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('结束交易 / 复盘')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            LabeledSection(
              title: '结束信息',
              children: [
                TextFormField(
                  controller: _exitReasonController,
                  decoration: const InputDecoration(labelText: '最终退出原因'),
                  maxLines: 2,
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _summaryPnlController,
                  decoration: const InputDecoration(labelText: '汇总盈亏 (PnL)'),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(child: Text('结束时间: ${formatDateTime(_endTime)}')),
                    TextButton.icon(
                      onPressed: _pickEndTime,
                      icon: const Icon(Icons.schedule),
                      label: const Text('修改'),
                    ),
                  ],
                ),
              ],
            ),
            LabeledSection(
              title: '结构化复盘',
              children: [
                DropdownButtonFormField<PlanFollowed>(
                  value: _planFollowed,
                  decoration: const InputDecoration(labelText: '是否按计划执行'),
                  items: PlanFollowed.values
                      .map(
                        (e) => DropdownMenuItem(value: e, child: Text(e.label)),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() => _planFollowed = value);
                    }
                  },
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<int>(
                  value: _executionScore,
                  decoration: const InputDecoration(labelText: '执行评分 (1-5)'),
                  items: List.generate(
                    5,
                    (index) => DropdownMenuItem(
                      value: index + 1,
                      child: Text('${index + 1}'),
                    ),
                  ),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() => _executionScore = value);
                    }
                  },
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<int>(
                  value: _resultScore,
                  decoration: const InputDecoration(labelText: '结果评分 (1-5)'),
                  items: List.generate(
                    5,
                    (index) => DropdownMenuItem(
                      value: index + 1,
                      child: Text('${index + 1}'),
                    ),
                  ),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() => _resultScore = value);
                    }
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _reviewTagsController,
                  decoration: const InputDecoration(labelText: '复盘标签（逗号分隔）'),
                ),
              ],
            ),
            LabeledSection(
              title: '自由复盘文本',
              children: [
                TextFormField(
                  controller: _reviewTextController,
                  decoration: const InputDecoration(
                    labelText: '本次交易最关键的认识 / 盈亏来源 / 下次优化',
                  ),
                  maxLines: 6,
                ),
              ],
            ),
            const SizedBox(height: 12),
            FilledButton.icon(
              onPressed: _saving ? null : _submit,
              icon: _saving
                  ? const SizedBox(
                      width: 14,
                      height: 14,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.done_all),
              label: Text(_saving ? '提交中...' : '确认结束交易'),
            ),
          ],
        ),
      ),
    );
  }
}
