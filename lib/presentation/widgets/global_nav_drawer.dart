import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GlobalNavDrawer extends StatelessWidget {
  const GlobalNavDrawer({super.key, required this.location});

  final String location;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            const ListTile(
              title: Text(
                'TradingNotes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('交易复盘记录 App'),
            ),
            const Divider(),
            _buildItem(context, '交易列表', '/trades'),
            _buildItem(context, '统计页', '/stats'),
            _buildItem(context, '设置', '/settings'),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, String title, String path) {
    return ListTile(
      selected: location.startsWith(path),
      title: Text(title),
      onTap: () {
        Navigator.of(context).pop();
        context.go(path);
      },
    );
  }
}
