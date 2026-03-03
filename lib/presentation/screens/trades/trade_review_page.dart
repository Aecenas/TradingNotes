import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/formatters.dart';
import '../../../domain/entities/trade.dart';
import '../../providers.dart';
import '../../widgets/form_widgets.dart';
import '../../widgets/tag_input_helper.dart';

class TradeReviewPage extends ConsumerStatefulWidget {
  const TradeReviewPage({super.key, required this.tradeId});

  final String tradeId;

  @override
  ConsumerState<TradeReviewPage> createState() => _TradeReviewPageState();
}

class _TradeReviewPageState extends ConsumerState<TradeReviewPage> {
  final _reviewTextController = TextEditingController();
  final _reviewTagsController = TextEditingController();

  bool _loading = false;
  bool _saving = false;
  Trade? _trade;

  PlanFollowed? _planFollowed;
  int? _executionScore;
  int? _resultScore;

  @override
  void initState() {
    super.initState();
    _loadTrade();
  }

  @override
  void dispose() {
    _reviewTextController.dispose();
    _reviewTagsController.dispose();
    super.dispose();
  }

  Future<void> _loadTrade() async {
    setState(() => _loading = true);
    final result = await ref
        .read(tradeRepositoryProvider)
        .getTradeById(widget.tradeId);

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
    _trade = trade;
    _reviewTextController.text = trade.reviewText ?? '';
    _reviewTagsController.text = trade.reviewErrorTags.join(', ');
    _planFollowed = trade.reviewPlanFollowed;
    _executionScore = trade.reviewScoreExecution;
    _resultScore = trade.reviewScoreResult;

    setState(() => _loading = false);
  }

  Future<void> _save() async {
    final trade = _trade;
    if (trade == null) {
      return;
    }

    setState(() => _saving = true);

    final updatedTrade = trade.copyWith(
      reviewText: _reviewTextController.text.trim().isEmpty
          ? null
          : _reviewTextController.text.trim(),
      reviewErrorTags: parseTagsInput(_reviewTagsController.text),
      reviewPlanFollowed: _planFollowed,
      reviewScoreExecution: _executionScore,
      reviewScoreResult: _resultScore,
      updatedAt: nowUtc(),
    );

    final result = await ref
        .read(updateTradeUseCaseProvider)
        .call(updatedTrade);

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

    context.pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('复盘草稿')),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _trade == null
          ? const Center(child: Text('Trade 不存在'))
          : ListView(
              padding: const EdgeInsets.all(12),
              children: [
                Text(
                  _trade!.status == TradeStatus.closed
                      ? '该交易已结束，可继续补充复盘。'
                      : '该交易进行中，可先记录复盘草稿。',
                ),
                const SizedBox(height: 8),
                LabeledSection(
                  title: '结构化复盘',
                  children: [
                    DropdownButtonFormField<PlanFollowed?>(
                      initialValue: _planFollowed,
                      decoration: const InputDecoration(labelText: '是否按计划执行'),
                      items: [
                        const DropdownMenuItem<PlanFollowed?>(
                          value: null,
                          child: Text('未设置'),
                        ),
                        ...PlanFollowed.values.map(
                          (e) =>
                              DropdownMenuItem(value: e, child: Text(e.label)),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() => _planFollowed = value);
                      },
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<int?>(
                      initialValue: _executionScore,
                      decoration: const InputDecoration(
                        labelText: '执行评分 (1-5)',
                      ),
                      items: [
                        const DropdownMenuItem<int?>(
                          value: null,
                          child: Text('未设置'),
                        ),
                        ...List.generate(
                          5,
                          (index) => DropdownMenuItem<int?>(
                            value: index + 1,
                            child: Text('${index + 1}'),
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() => _executionScore = value);
                      },
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<int?>(
                      initialValue: _resultScore,
                      decoration: const InputDecoration(
                        labelText: '结果评分 (1-5)',
                      ),
                      items: [
                        const DropdownMenuItem<int?>(
                          value: null,
                          child: Text('未设置'),
                        ),
                        ...List.generate(
                          5,
                          (index) => DropdownMenuItem<int?>(
                            value: index + 1,
                            child: Text('${index + 1}'),
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() => _resultScore = value);
                      },
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _reviewTagsController,
                      decoration: const InputDecoration(
                        labelText: '复盘标签（逗号分隔）',
                        hintText: '过早止盈, 没按计划, 情绪化交易',
                      ),
                    ),
                  ],
                ),
                LabeledSection(
                  title: '自由复盘文本',
                  children: [
                    TextFormField(
                      controller: _reviewTextController,
                      minLines: 6,
                      maxLines: 12,
                      decoration: const InputDecoration(
                        labelText: '记录关键认识 / 盈亏来源 / 问题 / 下次优化',
                        alignLabelWithHint: true,
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
                  label: Text(
                    _saving
                        ? '保存中...'
                        : (_trade!.status == TradeStatus.closed
                              ? '保存复盘'
                              : '保存复盘草稿'),
                  ),
                ),
              ],
            ),
    );
  }
}
