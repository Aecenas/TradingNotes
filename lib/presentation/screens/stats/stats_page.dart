import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/stats_summary.dart';
import '../../providers.dart';
import '../../theme/app_theme.dart';
import '../../widgets/global_nav_drawer.dart';

class StatsPage extends ConsumerStatefulWidget {
  const StatsPage({super.key});

  @override
  ConsumerState<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends ConsumerState<StatsPage> {
  bool _loading = false;
  String? _error;
  StatsSummary? _summary;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    final result = await ref.read(getStatsSummaryUseCaseProvider)();
    if (!mounted) {
      return;
    }

    setState(() {
      _loading = false;
      if (result.isFailure) {
        _error = result.error!.message;
      } else {
        _summary = result.requireData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const GlobalNavDrawer(location: '/stats'),
      appBar: AppBar(
        title: const Text('统计面板'),
        actions: [
          IconButton(onPressed: _load, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _load,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(14, 10, 14, 24),
          children: [
            _buildHeader(),
            const SizedBox(height: 12),
            if (_loading)
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Center(child: CircularProgressIndicator()),
              )
            else if (_error != null)
              _buildErrorCard()
            else if (_summary == null)
              _buildEmptyCard()
            else
              _buildContent(_summary!),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(color: const Color(0xFFD8E5EE)),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppTheme.bgMuted,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.query_stats_rounded),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('基础表现', style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 4),
                Text(
                  '追踪交易数量、胜率与策略分布。',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('统计加载失败', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(_error!),
            const SizedBox(height: 10),
            FilledButton(onPressed: _load, child: const Text('重试')),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          '暂无统计数据。先新增几条交易记录后再查看。',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }

  Widget _buildContent(StatsSummary summary) {
    final winRate = summary.closedTrades == 0
        ? 0
        : (summary.winningTrades / summary.closedTrades * 100);

    return Column(
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            final itemWidth = (constraints.maxWidth - 8) / 2;
            return Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _metricCard('总交易数', summary.totalTrades.toString(), itemWidth),
                _metricCard('已结束', summary.closedTrades.toString(), itemWidth),
                _metricCard(
                  '盈利笔数',
                  summary.winningTrades.toString(),
                  itemWidth,
                ),
                _metricCard('胜率', '${winRate.toStringAsFixed(1)}%', itemWidth),
              ],
            );
          },
        ),
        const SizedBox(height: 12),
        _groupCard('市场分布', summary.marketCounts),
        _groupCard('策略分布', summary.strategyCounts),
        _groupCard('复盘标签频次', summary.reviewTagFrequency),
      ],
    );
  }

  Widget _metricCard(String title, String value, double width) {
    return SizedBox(
      width: width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 8),
              Text(value, style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
        ),
      ),
    );
  }

  Widget _groupCard(String title, Map<String, int> data) {
    final sorted = data.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final maxValue = sorted.isEmpty ? 1 : sorted.first.value;

    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            if (sorted.isEmpty)
              Text('-', style: Theme.of(context).textTheme.bodySmall)
            else
              ...sorted.map(
                (entry) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text(entry.key)),
                          Text(entry.value.toString()),
                        ],
                      ),
                      const SizedBox(height: 6),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(999),
                        child: LinearProgressIndicator(
                          minHeight: 8,
                          value: entry.value / maxValue,
                          backgroundColor: const Color(0xFFE4ECF2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
