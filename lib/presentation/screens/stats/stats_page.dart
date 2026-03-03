import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/stats_summary.dart';
import '../../providers.dart';
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
        title: const Text('基础统计'),
        actions: [
          IconButton(onPressed: _load, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
          ? Center(child: Text(_error!))
          : _summary == null
          ? const Center(child: Text('暂无统计数据'))
          : _buildContent(_summary!),
    );
  }

  Widget _buildContent(StatsSummary summary) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            _metricCard('总交易数', summary.totalTrades.toString()),
            _metricCard('已结束交易数', summary.closedTrades.toString()),
            _metricCard('盈利交易数', summary.winningTrades.toString()),
            _metricCard('亏损交易数', summary.losingTrades.toString()),
          ],
        ),
        const SizedBox(height: 12),
        _groupCard('市场分布', summary.marketCounts),
        _groupCard('策略分布', summary.strategyCounts),
        _groupCard('复盘标签频次', summary.reviewTagFrequency),
      ],
    );
  }

  Widget _metricCard(String title, String value) {
    return SizedBox(
      width: 160,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 8),
              Text(value, style: Theme.of(context).textTheme.headlineSmall),
            ],
          ),
        ),
      ),
    );
  }

  Widget _groupCard(String title, Map<String, int> data) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            if (data.isEmpty)
              const Text('-')
            else
              ...data.entries.map(
                (entry) => Text('${entry.key}: ${entry.value}'),
              ),
          ],
        ),
      ),
    );
  }
}
