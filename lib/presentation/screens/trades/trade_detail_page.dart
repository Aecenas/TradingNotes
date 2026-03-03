import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/formatters.dart';
import '../../../domain/entities/event.dart';
import '../../../domain/entities/leg.dart';
import '../../../domain/entities/trade.dart';
import '../../providers.dart';
import '../../theme/app_theme.dart';
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
        title: const Text('交易详情'),
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
          : RefreshIndicator(
              onRefresh: _loadAll,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(14, 10, 14, 24),
                children: [_buildContent()],
              ),
            ),
    );
  }

  Widget _buildContent() {
    final trade = _trade!;

    return Column(
      children: [
        _buildTopCard(trade),
        const SizedBox(height: 12),
        LabeledSection(
          title: '交易背景',
          subtitle: '记录这笔交易最初的思考与边界条件。',
          children: [
            _kvRow('开仓理由', trade.entryReason),
            _kvRow('Thesis', trade.thesis),
            _kvRow('预期', trade.expectation),
            _kvRow('失效条件', trade.invalidationCondition),
          ],
        ),
        LabeledSection(
          title: 'Leg 列表',
          subtitle: '拆分每一腿，回看仓位结构与动作节奏。',
          action: OutlinedButton.icon(
            onPressed: () => _go('/legs/new?tradeId=${trade.id}'),
            icon: const Icon(Icons.add),
            label: const Text('添加 Leg'),
          ),
          children: [
            if (_legs.isEmpty)
              Text('暂无 Leg', style: Theme.of(context).textTheme.bodySmall)
            else
              ..._legs.map(_buildLegCard),
          ],
        ),
        LabeledSection(
          title: '事件时间线',
          subtitle: '按时间回放关键动作与市场判断变化。',
          action: OutlinedButton.icon(
            onPressed: () => _go('/events/new?tradeId=${trade.id}&scope=trade'),
            icon: const Icon(Icons.add_comment_outlined),
            label: const Text('添加事件'),
          ),
          children: [
            if (_timeline.isEmpty)
              Text('暂无事件', style: Theme.of(context).textTheme.bodySmall)
            else
              ..._timeline.map(_buildEventCard),
          ],
        ),
        LabeledSection(
          title: '复盘区',
          subtitle: '沉淀本次交易的执行质量与经验。',
          action: OutlinedButton.icon(
            onPressed: () => _go('/trades/${trade.id}/review'),
            icon: const Icon(Icons.edit_note),
            label: Text(trade.status == TradeStatus.closed ? '编辑复盘' : '编辑草稿'),
          ),
          children: [
            _kvRow('执行评分', trade.reviewScoreExecution?.toString()),
            _kvRow('结果评分', trade.reviewScoreResult?.toString()),
            _kvRow('按计划执行', trade.reviewPlanFollowed?.label),
            _kvRow('复盘标签', trade.reviewErrorTags.join(', ')),
            _kvRow('复盘文本', trade.reviewText),
          ],
        ),
      ],
    );
  }

  Widget _buildTopCard(Trade trade) {
    final statusColor = _statusColor(trade.status);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0E7EA3), Color(0xFF1CA1BA)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 8,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                trade.title,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  trade.status.label,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: statusColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _topMeta('市场 ${trade.market.label}'),
              _topMeta('策略 ${trade.strategyType.label}'),
              _topMeta('结构 ${trade.structureType.label}'),
              _topMeta('PnL ${formatNumber(trade.summaryPnl)}'),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '时间: ${formatDateTime(trade.startTime)} -> ${formatDateTime(trade.endTime)}',
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: const Color(0xFFDBF5FF)),
          ),
          if (trade.tags.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              '标签: ${trade.tags.join(', ')}',
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: const Color(0xFFDBF5FF)),
            ),
          ],
          const SizedBox(height: 14),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              OutlinedButton.icon(
                onPressed: () => _go('/trades/${trade.id}/edit'),
                icon: const Icon(Icons.edit),
                label: const Text('编辑交易'),
              ),
              OutlinedButton.icon(
                onPressed: () => _go('/trades/${trade.id}/close'),
                icon: const Icon(Icons.flag_outlined),
                label: const Text('结束交易'),
              ),
              OutlinedButton.icon(
                onPressed: _toggleArchive,
                icon: const Icon(Icons.archive_outlined),
                label: Text(
                  trade.status == TradeStatus.archived ? '取消归档' : '归档',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _topMeta(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0x22000000),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        text,
        style: Theme.of(
          context,
        ).textTheme.bodySmall?.copyWith(color: Colors.white),
      ),
    );
  }

  Widget _buildLegCard(Leg leg) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      color: const Color(0xFFF8FCFF),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${leg.symbol} (${leg.direction.label})',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            Text(
              '工具 ${leg.instrumentType.label}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            if (leg.note != null && leg.note!.isNotEmpty) ...[
              const SizedBox(height: 6),
              Text(leg.note!),
            ],
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 6,
              children: [
                TextButton(
                  onPressed: () => _go('/legs/${leg.id}/edit'),
                  child: const Text('编辑'),
                ),
                TextButton(
                  onPressed: () => _go(
                    '/events/new?tradeId=${_trade!.id}&scope=leg&legId=${leg.id}',
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
    );
  }

  Widget _buildEventCard(Event event) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      color: const Color(0xFFF8FCFF),
      child: ListTile(
        leading: Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
            color: AppTheme.bgMuted,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            _timelineIcon(event),
            size: 18,
            color: AppTheme.inkStrong,
          ),
        ),
        title: Text(
          '${event.eventType.label} · ${event.scopeType.label}${event.legId == null ? '' : ' · Leg'}',
        ),
        subtitle: Text(
          '${formatDateTime(event.eventTime)}\n${event.title ?? ''}\n${event.note}\n附件 ${event.attachments.length}',
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
    );
  }

  Widget _kvRow(String label, String? value) {
    final text = value == null || value.isEmpty ? '-' : value;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 2),
          Text(text),
        ],
      ),
    );
  }

  Color _statusColor(TradeStatus status) {
    switch (status) {
      case TradeStatus.active:
        return const Color(0xFF0A8A6A);
      case TradeStatus.closed:
        return const Color(0xFF0A7FA6);
      case TradeStatus.draft:
        return const Color(0xFF5C6D7D);
      case TradeStatus.archived:
        return const Color(0xFF755F2A);
    }
  }

  IconData _timelineIcon(Event event) {
    switch (event.eventType) {
      case EventType.open:
        return Icons.login_rounded;
      case EventType.add:
        return Icons.add_circle_outline;
      case EventType.reduce:
        return Icons.remove_circle_outline;
      case EventType.close:
        return Icons.logout_rounded;
      case EventType.moveStop:
      case EventType.moveTarget:
        return Icons.swap_horiz_rounded;
      case EventType.hedge:
      case EventType.roll:
        return Icons.change_circle_outlined;
      case EventType.marketEvent:
      case EventType.thesisUpdate:
      case EventType.planUpdate:
      case EventType.generalNote:
        return Icons.notes_rounded;
    }
  }
}
