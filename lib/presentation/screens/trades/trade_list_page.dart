import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/formatters.dart';
import '../../../domain/entities/trade.dart';
import '../../providers.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const GlobalNavDrawer(location: '/trades'),
      appBar: AppBar(
        title: const Text('交易列表'),
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
        icon: const Icon(Icons.add),
        label: const Text('新建 Trade'),
      ),
      body: Column(
        children: [
          _buildFilters(),
          const Divider(height: 1),
          Expanded(child: _buildBody()),
        ],
      ),
    );
  }

  Widget _buildFilters() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: '搜索标题/开仓理由',
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
            decoration: const InputDecoration(labelText: '标签过滤（精确匹配单个标签）'),
            onSubmitted: (_) => _loadTrades(),
          ),
          const SizedBox(height: 8),
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
                icon: const Icon(Icons.date_range),
                label: Text('起始: ${formatDateTime(_startFrom)}'),
              ),
              OutlinedButton.icon(
                onPressed: () => _pickDate(start: false),
                icon: const Icon(Icons.date_range_outlined),
                label: Text('结束: ${formatDateTime(_startTo)}'),
              ),
              TextButton(
                onPressed: () async {
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
                },
                child: const Text('重置筛选'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_error != null) {
      return Center(child: Text(_error!));
    }
    if (_trades.isEmpty) {
      return const Center(child: Text('暂无交易，点击右下角创建'));
    }

    return RefreshIndicator(
      onRefresh: _loadTrades,
      child: ListView.separated(
        itemCount: _trades.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final trade = _trades[index];
          return ListTile(
            title: Text(trade.title),
            subtitle: Text(
              '${trade.market.label} · ${trade.strategyType.label} · ${trade.status.label}\n'
              '开始: ${formatDateTime(trade.startTime)}  结束: ${formatDateTime(trade.endTime)}\n'
              'PnL: ${formatNumber(trade.summaryPnl)}',
            ),
            isThreeLine: true,
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _openTradeDetail(trade.id),
          );
        },
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
          (e) => DropdownMenuItem<MarketType?>(value: e, child: Text(e.label)),
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
          (e) => DropdownMenuItem<TradeStatus?>(value: e, child: Text(e.label)),
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
          (e) =>
              DropdownMenuItem<StrategyType?>(value: e, child: Text(e.label)),
        ),
      ],
      onChanged: (value) async {
        setState(() => _strategy = value);
        await _loadTrades();
      },
    );
  }
}
