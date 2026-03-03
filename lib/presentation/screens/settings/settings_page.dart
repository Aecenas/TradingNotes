import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../widgets/global_nav_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const GlobalNavDrawer(location: '/settings'),
      appBar: AppBar(title: const Text('设置与说明')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(14, 10, 14, 24),
        children: [
          _buildHeader(context),
          const SizedBox(height: 12),
          _infoCard(
            context,
            title: '应用信息',
            items: const [
              _InfoItem(label: '版本', value: 'TradingNotes v1'),
              _InfoItem(label: '存储', value: '本地 SQLite（SQLCipher）'),
              _InfoItem(label: '附件', value: '应用私有目录图片文件'),
              _InfoItem(label: '同步方式', value: '离线本地，不含云同步'),
            ],
          ),
          const SizedBox(height: 10),
          _infoCard(
            context,
            title: '风险提示',
            items: const [
              _InfoItem(
                label: '密钥恢复',
                value: '若设备重装且 Secure Storage 丢失，旧数据库可能无法解密。',
              ),
              _InfoItem(label: '建议', value: '定期手动导出关键复盘文本，避免单点丢失。'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF116D90), Color(0xFF1CA1BA)],
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: const Color(0x22FFFFFF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.settings_suggest_rounded,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '运行配置',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 4),
                Text(
                  '这里展示本地数据与安全相关说明。',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: const Color(0xFFD8F3FE),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoCard(
    BuildContext context, {
    required String title,
    required List<_InfoItem> items,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            ...items.map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 7,
                      height: 7,
                      margin: const EdgeInsets.only(top: 6),
                      decoration: const BoxDecoration(
                        color: AppTheme.brandPrimary,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text: '${item.label}: ',
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(text: item.value),
                          ],
                        ),
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

class _InfoItem {
  const _InfoItem({required this.label, required this.value});

  final String label;
  final String value;
}
