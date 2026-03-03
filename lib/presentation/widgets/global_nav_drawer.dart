import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/app_theme.dart';

class GlobalNavDrawer extends StatelessWidget {
  const GlobalNavDrawer({super.key, required this.location});

  final String location;

  @override
  Widget build(BuildContext context) {
    final items = [
      const _NavItemData(
        title: '交易列表',
        path: '/trades',
        icon: Icons.candlestick_chart_outlined,
      ),
      const _NavItemData(
        title: '统计页',
        path: '/stats',
        icon: Icons.analytics_outlined,
      ),
      const _NavItemData(
        title: '设置',
        path: '/settings',
        icon: Icons.tune_rounded,
      ),
    ];

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(18, 18, 18, 16),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF0E7EA3), Color(0xFF18A4C3)],
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TradingNotes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.2,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '交易记录与复盘',
                    style: TextStyle(
                      color: Color(0xFFE6F6FC),
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                itemCount: items.length,
                separatorBuilder: (_, __) => const SizedBox(height: 4),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return _buildItem(context, item);
                },
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppTheme.bgMuted,
              ),
              child: Text(
                '记录 > 复盘 > 迭代',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, _NavItemData item) {
    final isSelected = location.startsWith(item.path);
    return ListTile(
      selected: isSelected,
      leading: Icon(item.icon),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      tileColor: isSelected ? const Color(0xFFDDF0F7) : null,
      selectedTileColor: const Color(0xFFDDF0F7),
      title: Text(
        item.title,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
        ),
      ),
      onTap: () {
        Navigator.of(context).pop();
        context.go(item.path);
      },
    );
  }
}

class _NavItemData {
  const _NavItemData({
    required this.title,
    required this.path,
    required this.icon,
  });

  final String title;
  final String path;
  final IconData icon;
}
