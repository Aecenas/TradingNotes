import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/formatters.dart';
import '../../../domain/entities/event.dart';
import '../../../domain/entities/leg.dart';
import '../../../domain/entities/trade.dart';
import '../../providers.dart';
import '../../widgets/form_widgets.dart';

class TradeDetailPage extends ConsumerStatefulWidget {
  const TradeDetailPage({super.key, required this.tradeId});

  final String tradeId;

  @override
  ConsumerState<TradeDetailPage> createState() => _TradeDetailPageState();
}

class _TradeDetailPageState extends ConsumerState<TradeDetailPage> {
  bool _loading = false;
  String? _error;

  Trade? _trade;
  List<Leg> _legs = const [];
  List<Event> _timeline = const [];

  @override
  void initState() {
    super.initState();
    _loadAll();
  }

  Future<void> _loadAll() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    final tradeResult = await ref
        .read(tradeRepositoryProvider)
        .getTradeById(widget.tradeId);
    if (tradeResult.isFailure) {
      if (!mounted) {
        return;
      }
      setState(() {
        _loading = false;
        _error = tradeResult.error!.message;
      });
      return;
    }

    final legsResult = await ref
        .read(legRepositoryProvider)
        .getLegsByTrade(widget.tradeId);
    final timelineResult = await ref.read(getTradeTimelineUseCaseProvider)(
      widget.tradeId,
    );

    if (!mounted) {
      return;
    }

    setState(() {
      _loading = false;
      _trade = tradeResult.requireData();
      _legs = legsResult.data ?? const [];
      _timeline = timelineResult.data ?? const [];
      if (legsResult.isFailure) {
        _error = legsResult.error?.message;
      } else if (timelineResult.isFailure) {
        _error = timelineResult.error?.message;
      }
    });
  }

  Future<void> _toggleArchive() async {
    final trade = _trade;
    if (trade == null) {
      return;
    }
    final archived = trade.status != TradeStatus.archived;
    final result = await ref.read(archiveTradeUseCaseProvider)(
      trade.id,
      archived,
    );
    if (!mounted) {
      return;
    }
    if (result.isFailure) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(result.error!.message)));
      return;
    }
    await _loadAll();
  }

  Future<void> _deleteLeg(String legId) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('删除 Leg'),
        content: const Text('若该 Leg 关联了 Event，将无法删除。是否继续？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('删除'),
          ),
        ],
      ),
    );
    if (confirm != true) {
      return;
    }

    final result = await ref.read(deleteLegUseCaseProvider)(legId);
    if (!mounted) {
      return;
    }
    if (result.isFailure) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(result.error!.message)));
      return;
    }
    await _loadAll();
  }

  Future<void> _deleteEvent(String eventId) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('删除 Event'),
        content: const Text('删除后不可恢复，是否继续？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('删除'),
          ),
        ],
      ),
    );
    if (confirm != true) {
      return;
    }

    final result = await ref.read(deleteEventUseCaseProvider)(eventId);
    if (!mounted) {
      return;
    }
    if (result.isFailure) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(result.error!.message)));
      return;
    }
    await _loadAll();
  }

  Future<void> _go(String path) async {
    await context.push(path);
    await _loadAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trade 详情'),
        actions: [
          IconButton(
            tooltip: '返回交易列表',
            onPressed: () => context.go('/trades'),
            icon: const Icon(Icons.home_outlined),
          ),
          IconButton(onPressed: _loadAll, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
          ? Center(child: Text(_error!))
          : _trade == null
          ? const Center(child: Text('Trade 不存在'))
          : _buildContent(),
    );
  }

  Widget _buildContent() {
    final trade = _trade!;
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        LabeledSection(
          title: '顶部摘要',
          children: [
            Text(trade.title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('市场: ${trade.market.label}'),
            Text('策略: ${trade.strategyType.label}'),
            Text('结构: ${trade.structureType.label}'),
            Text('状态: ${trade.status.label}'),
            Text(
              '时间: ${formatDateTime(trade.startTime)} ~ ${formatDateTime(trade.endTime)}',
            ),
            Text('汇总 PnL: ${formatNumber(trade.summaryPnl)}'),
            if (trade.tags.isNotEmpty) Text('标签: ${trade.tags.join(', ')}'),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                OutlinedButton.icon(
                  onPressed: () => _go('/trades/${trade.id}/edit'),
                  icon: const Icon(Icons.edit),
                  label: const Text('编辑 Trade'),
                ),
                OutlinedButton.icon(
                  onPressed: () => context.go('/trades'),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('返回列表'),
                ),
                OutlinedButton.icon(
                  onPressed: () =>
                      _go('/events/new?tradeId=${trade.id}&scope=trade'),
                  icon: const Icon(Icons.add_comment),
                  label: const Text('添加 Trade 事件'),
                ),
                OutlinedButton.icon(
                  onPressed: () => _go('/trades/${trade.id}/review'),
                  icon: const Icon(Icons.rate_review_outlined),
                  label: const Text('编辑复盘'),
                ),
                OutlinedButton.icon(
                  onPressed: () => _go('/trades/${trade.id}/close'),
                  icon: const Icon(Icons.flag),
                  label: const Text('结束交易'),
                ),
                OutlinedButton.icon(
                  onPressed: _toggleArchive,
                  icon: const Icon(Icons.archive),
                  label: Text(
                    trade.status == TradeStatus.archived ? '取消归档' : '归档',
                  ),
                ),
              ],
            ),
          ],
        ),
        LabeledSection(
          title: '交易背景',
          children: [
            _rowText('开仓理由', trade.entryReason),
            _rowText('Thesis', trade.thesis),
            _rowText('预期', trade.expectation),
            _rowText('失效条件', trade.invalidationCondition),
          ],
        ),
        LabeledSection(
          title: 'Leg 列表',
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: OutlinedButton.icon(
                onPressed: () => _go('/legs/new?tradeId=${trade.id}'),
                icon: const Icon(Icons.add),
                label: const Text('添加 Leg'),
              ),
            ),
            if (_legs.isEmpty)
              const Text('暂无 Leg')
            else
              ..._legs.map(
                (leg) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${leg.symbol} (${leg.direction.label})'),
                        Text('工具: ${leg.instrumentType.label}'),
                        if (leg.note != null && leg.note!.isNotEmpty)
                          Text('备注: ${leg.note}'),
                        const SizedBox(height: 6),
                        Wrap(
                          spacing: 8,
                          children: [
                            TextButton(
                              onPressed: () => _go('/legs/${leg.id}/edit'),
                              child: const Text('编辑'),
                            ),
                            TextButton(
                              onPressed: () => _go(
                                '/events/new?tradeId=${trade.id}&scope=leg&legId=${leg.id}',
                              ),
                              child: const Text('添加事件'),
                            ),
                            TextButton(
                              onPressed: () => _deleteLeg(leg.id),
                              child: const Text('删除'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
        LabeledSection(
          title: '事件时间线',
          children: [
            if (_timeline.isEmpty)
              const Text('暂无事件')
            else
              ..._timeline.map(
                (event) => Card(
                  child: ListTile(
                    title: Text(
                      '${event.eventType.label} · ${event.scopeType.label}'
                      '${event.legId == null ? '' : ' · Leg ${event.legId}'}',
                    ),
                    subtitle: Text(
                      '${formatDateTime(event.eventTime)}\n'
                      '${event.title ?? ''}\n'
                      '${event.note}\n'
                      '附件: ${event.attachments.length}',
                    ),
                    isThreeLine: true,
                    trailing: PopupMenuButton<String>(
                      onSelected: (value) {
                        if (value == 'edit') {
                          _go('/events/${event.id}/edit');
                        } else if (value == 'delete') {
                          _deleteEvent(event.id);
                        }
                      },
                      itemBuilder: (_) => const [
                        PopupMenuItem(value: 'edit', child: Text('编辑')),
                        PopupMenuItem(value: 'delete', child: Text('删除')),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
        LabeledSection(
          title: '复盘区',
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: OutlinedButton.icon(
                onPressed: () => _go('/trades/${trade.id}/review'),
                icon: const Icon(Icons.edit_note),
                label: Text(
                  trade.status == TradeStatus.closed ? '编辑复盘' : '编辑复盘草稿',
                ),
              ),
            ),
            const SizedBox(height: 8),
            _rowText('执行评分', trade.reviewScoreExecution?.toString()),
            _rowText('结果评分', trade.reviewScoreResult?.toString()),
            _rowText('按计划执行', trade.reviewPlanFollowed?.label),
            _rowText('复盘标签', trade.reviewErrorTags.join(', ')),
            _rowText('复盘文本', trade.reviewText),
          ],
        ),
      ],
    );
  }

  Widget _rowText(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text('$label: ${value == null || value.isEmpty ? '-' : value}'),
    );
  }
}
