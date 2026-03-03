import 'package:flutter/material.dart';

import '../../widgets/global_nav_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const GlobalNavDrawer(location: '/settings'),
      appBar: AppBar(title: const Text('设置')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TradingNotes v1',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('数据存储: 本地 SQLite（SQLCipher 加密）'),
            Text('附件存储: 应用私有目录（图片）'),
            Text('同步方式: 本地离线，暂不支持云同步'),
            SizedBox(height: 16),
            Text('说明：若设备重装且 Secure Storage 丢失，旧数据库无法解密读取。'),
          ],
        ),
      ),
    );
  }
}
