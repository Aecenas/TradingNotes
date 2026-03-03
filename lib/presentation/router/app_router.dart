import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/events/event_form_page.dart';
import '../screens/legs/leg_form_page.dart';
import '../screens/settings/settings_page.dart';
import '../screens/stats/stats_page.dart';
import '../screens/trades/close_trade_page.dart';
import '../screens/trades/trade_detail_page.dart';
import '../screens/trades/trade_form_page.dart';
import '../screens/trades/trade_list_page.dart';
import '../screens/trades/trade_review_page.dart';

GoRouter buildAppRouter() {
  return GoRouter(
    initialLocation: '/trades',
    routes: [
      GoRoute(path: '/', redirect: (_, __) => '/trades'),
      GoRoute(path: '/trades', builder: (_, __) => const TradeListPage()),
      GoRoute(path: '/trades/new', builder: (_, __) => const TradeFormPage()),
      GoRoute(
        path: '/trades/:id',
        builder: (_, state) =>
            TradeDetailPage(tradeId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/trades/:id/edit',
        builder: (_, state) =>
            TradeFormPage(tradeId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/trades/:id/close',
        builder: (_, state) =>
            CloseTradePage(tradeId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/trades/:id/review',
        builder: (_, state) =>
            TradeReviewPage(tradeId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/legs/new',
        builder: (_, state) {
          final tradeId = state.uri.queryParameters['tradeId'];
          return LegFormPage(tradeId: tradeId);
        },
      ),
      GoRoute(
        path: '/legs/:id/edit',
        builder: (_, state) => LegFormPage(legId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/events/new',
        builder: (_, state) => EventFormPage(
          tradeId: state.uri.queryParameters['tradeId'],
          scope: state.uri.queryParameters['scope'],
          legId: state.uri.queryParameters['legId'],
        ),
      ),
      GoRoute(
        path: '/events/:id/edit',
        builder: (_, state) =>
            EventFormPage(eventId: state.pathParameters['id']!),
      ),
      GoRoute(path: '/stats', builder: (_, __) => const StatsPage()),
      GoRoute(path: '/settings', builder: (_, __) => const SettingsPage()),
    ],
    errorBuilder: (context, state) {
      return Scaffold(
        appBar: AppBar(title: const Text('页面不存在')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('无效路由: ${state.uri}'),
              const SizedBox(height: 8),
              FilledButton(
                onPressed: () => context.go('/trades'),
                child: const Text('返回交易列表'),
              ),
            ],
          ),
        ),
      );
    },
  );
}
