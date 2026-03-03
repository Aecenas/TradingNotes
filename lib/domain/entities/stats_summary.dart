class StatsSummary {
  const StatsSummary({
    required this.totalTrades,
    required this.closedTrades,
    required this.winningTrades,
    required this.losingTrades,
    required this.marketCounts,
    required this.strategyCounts,
    required this.reviewTagFrequency,
  });

  final int totalTrades;
  final int closedTrades;
  final int winningTrades;
  final int losingTrades;
  final Map<String, int> marketCounts;
  final Map<String, int> strategyCounts;
  final Map<String, int> reviewTagFrequency;
}
