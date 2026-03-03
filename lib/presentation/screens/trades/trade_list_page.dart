import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/formatters.dart';
import '../../../domain/entities/trade.dart';
import '../../providers.dart';
import '../../theme/app_theme.dart';
import '../../widgets/global_nav_drawer.dart';

class TradeListPage extends ConsumerStatefulWidget {
  const TradeListPage({super.key});

  @override
  ConsumerState<TradeListPage> createState() => _TradeListPageState();
}

class _TradeListPageState extends ConsumerState<TradeListPage> {
  final _searchController = TextEditingController();
  final _tagController = TextEditingController();

  MarketType? _market;
  TradeStatus? _status;
  StrategyType? _strategy;
  DateTime? _startFrom;
  DateTime? _startTo;
  bool _includeArchived = false;

  bool _loading = false;
  String? _error;
  List<Trade> _trades = const [];

  @override
  void initState() {
    super.initState();
    _loadTrades();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _tagController.dispose();
    super.dispose();
  }

  Future<void> _loadTrades() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    final result = await ref
        .read(tradeRepositoryProvider)
        .getTrades(
          TradeQuery(
            keyword: _searchController.text,
            market: _market,
            status: _status,
            strategyType: _strategy,
            tag: _tagController.text,
            startFrom: _startFrom,
            startTo: _startTo,
            includeArchived: _includeArchived,
          ),
        );

    if (!mounted) {
      return;
    }

    setState(() {
      _loading = false;
      if (result.isFailure) {
        _error = result.error!.message;
      } else {
        _trades = result.data ?? const [];
      }
    });
  }

  Future<void> _pickDate({required bool start}) async {
    final initial = start
        ? (_startFrom ?? DateTime.now())
        : (_startTo ?? DateTime.now());
    final selected = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      initialDate: initial,
    );
    if (selected == null) {
      return;
    }

    setState(() {
      if (start) {
        _startFrom = DateTime(
          selected.year,
          selected.month,
          selected.day,
        ).toUtc();
      } else {
        _startTo = DateTime(
          selected.year,
          selected.month,
          selected.day,
          23,
          59,
          59,
        ).toUtc();
      }
    });
    await _loadTrades();
  }

  Future<void> _openNewTrade() async {
    await context.push('/trades/new');
    await _loadTrades();
  }

  Future<void> _openTradeDetail(String tradeId) async {
    await context.push('/trades/$tradeId');
    await _loadTrades();
  }

  Future<void> _resetFilters() async {
    setState(() {
      _market = null;
      _status = null;
      _strategy = null;
      _startFrom = null;
      _startTo = null;
      _includeArchived = false;
      _searchController.clear();
      _tagController.clear();
    });
    await _loadTrades();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const GlobalNavDrawer(location: '/trades'),
      appBar: AppBar(
        title: const Text('交易总览'),
        actions: [
          IconButton(
            tooltip: '刷新',
            onPressed: _loadTrades,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _openNewTrade,
        icon: const Icon(Icons.add_rounded),
        label: const Text('新建交易'),
      ),
      body: RefreshIndicator(
        onRefresh: _loadTrades,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(14, 10, 14, 92),
          children: [
            _buildSummaryBanner(),
            const SizedBox(height: 12),
            _buildFilters(),
            const SizedBox(height: 12),
            _buildBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryBanner() {
    final activeCount = _trades
        .where((trade) => trade.status == TradeStatus.active)
        .length;
    final closedCount = _trades
        .where((trade) => trade.status == TradeStatus.closed)
        .length;
    final pnlTotal = _trades.fold<double>(
      0,
      (sum, trade) => sum + (trade.summaryPnl ?? 0),
    );

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0E7EA3), Color(0xFF1AA1C0)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '交易记录面板',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            '专注记录决策和复盘，不追求界面噪声。',
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: const Color(0xFFDDF6FF)),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _summaryPill('总数', _trades.length.toString()),
              _summaryPill('进行中', activeCount.toString()),
              _summaryPill('已结束', closedCount.toString()),
              _summaryPill('累计 PnL', formatNumber(pnlTotal)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _summaryPill(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: const Color(0x22000000),
      ),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodySmall,
          children: [
            TextSpan(
              text: '$label ',
              style: const TextStyle(
                color: Color(0xFFCFEFFF),
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: value,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilters() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('筛选条件', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: '搜索标题 / 开仓理由',
                suffixIcon: IconButton(
                  onPressed: _loadTrades,
                  icon: const Icon(Icons.search),
                ),
              ),
              onSubmitted: (_) => _loadTrades(),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _tagController,
              decoration: const InputDecoration(labelText: '标签过滤（单个标签）'),
              onSubmitted: (_) => _loadTrades(),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                _buildMarketDropdown(),
                _buildStatusDropdown(),
                _buildStrategyDropdown(),
                FilterChip(
                  label: const Text('包含归档'),
                  selected: _includeArchived,
                  onSelected: (value) async {
                    setState(() => _includeArchived = value);
                    await _loadTrades();
                  },
                ),
                OutlinedButton.icon(
                  onPressed: () => _pickDate(start: true),
                  icon: const Icon(Icons.event_note_outlined),
                  label: Text('起始 ${formatDateTime(_startFrom)}'),
                ),
                OutlinedButton.icon(
                  onPressed: () => _pickDate(start: false),
                  icon: const Icon(Icons.event_available_outlined),
                  label: Text('结束 ${formatDateTime(_startTo)}'),
                ),
                TextButton(onPressed: _resetFilters, child: const Text('重置筛选')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    if (_loading) {
      return const Padding(
        padding: EdgeInsets.only(top: 40),
        child: Center(child: CircularProgressIndicator()),
      );
    }

    if (_error != null) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('加载失败', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              Text(_error!),
              const SizedBox(height: 10),
              FilledButton(onPressed: _loadTrades, child: const Text('重试')),
            ],
          ),
        ),
      );
    }

    if (_trades.isEmpty) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('暂无交易', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 6),
              Text(
                '创建第一条记录后，你的交易面板会在这里形成完整时间线。',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 12),
              FilledButton.icon(
                onPressed: _openNewTrade,
                icon: const Icon(Icons.add),
                label: const Text('新建交易'),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: _trades
          .map(
            (trade) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: _buildTradeCard(trade),
            ),
          )
          .toList(),
    );
  }

  Widget _buildTradeCard(Trade trade) {
    final statusColor = _statusColor(trade.status);
    final pnlColor = _pnlColor(trade.summaryPnl);

    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () => _openTradeDetail(trade.id),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      trade.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(999),
                      color: statusColor.withOpacity(0.12),
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
                spacing: 6,
                runSpacing: 6,
                children: [
                  _metaChip('市场 ${trade.market.label}'),
                  _metaChip('策略 ${trade.strategyType.label}'),
                  _metaChip('结构 ${trade.structureType.label}'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(
                    Icons.schedule,
                    size: 16,
                    color: AppTheme.inkMuted,
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      '${formatDateTime(trade.startTime)} -> ${formatDateTime(trade.endTime)}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              if (trade.tags.isNotEmpty) ...[
                const SizedBox(height: 8),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: trade.tags.take(5).map(_metaChip).toList(),
                ),
              ],
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'PnL ${formatNumber(trade.summaryPnl)}',
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: pnlColor),
                  ),
                  const Spacer(),
                  Text('查看详情', style: Theme.of(context).textTheme.bodySmall),
                  const SizedBox(width: 4),
                  const Icon(Icons.chevron_right_rounded),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _metaChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: AppTheme.bgMuted,
      ),
      child: Text(
        text,
        style: Theme.of(
          context,
        ).textTheme.bodySmall?.copyWith(color: AppTheme.inkStrong),
      ),
    );
  }

  Widget _buildMarketDropdown() {
    return DropdownButton<MarketType?>(
      value: _market,
      hint: const Text('市场'),
      items: [
        const DropdownMenuItem<MarketType?>(value: null, child: Text('全部市场')),
        ...MarketType.values.map(
          (item) => DropdownMenuItem<MarketType?>(
            value: item,
            child: Text(item.label),
          ),
        ),
      ],
      onChanged: (value) async {
        setState(() => _market = value);
        await _loadTrades();
      },
    );
  }

  Widget _buildStatusDropdown() {
    return DropdownButton<TradeStatus?>(
      value: _status,
      hint: const Text('状态'),
      items: [
        const DropdownMenuItem<TradeStatus?>(value: null, child: Text('全部状态')),
        ...TradeStatus.values.map(
          (item) => DropdownMenuItem<TradeStatus?>(
            value: item,
            child: Text(item.label),
          ),
        ),
      ],
      onChanged: (value) async {
        setState(() => _status = value);
        await _loadTrades();
      },
    );
  }

  Widget _buildStrategyDropdown() {
    return DropdownButton<StrategyType?>(
      value: _strategy,
      hint: const Text('策略'),
      items: [
        const DropdownMenuItem<StrategyType?>(value: null, child: Text('全部策略')),
        ...StrategyType.values.map(
          (item) => DropdownMenuItem<StrategyType?>(
            value: item,
            child: Text(item.label),
          ),
        ),
      ],
      onChanged: (value) async {
        setState(() => _strategy = value);
        await _loadTrades();
      },
    );
  }

  Color _statusColor(TradeStatus status) {
    switch (status) {
      case TradeStatus.active:
        return const Color(0xFF0A8A6A);
      case TradeStatus.closed:
        return const Color(0xFF0A7FA6);
      case TradeStatus.draft:
        return const Color(0xFF6B7280);
      case TradeStatus.archived:
        return const Color(0xFF755F2A);
    }
  }

  Color _pnlColor(double? pnl) {
    if (pnl == null) {
      return AppTheme.inkMuted;
    }
    if (pnl > 0) {
      return const Color(0xFF0F8B53);
    }
    if (pnl < 0) {
      return const Color(0xFFB42318);
    }
    return AppTheme.inkMuted;
  }
}
