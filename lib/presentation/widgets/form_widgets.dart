import 'package:flutter/material.dart';

class LabeledSection extends StatelessWidget {
  const LabeledSection({
    super.key,
    required this.title,
    required this.children,
    this.subtitle,
    this.action,
  });

  final String title;
  final List<Widget> children;
  final String? subtitle;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final headerChildren = <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: theme.textTheme.titleMedium),
            if (subtitle != null && subtitle!.isNotEmpty) ...[
              const SizedBox(height: 4),
              Text(subtitle!, style: theme.textTheme.bodySmall),
            ],
          ],
        ),
      ),
    ];
    if (action != null) {
      headerChildren.add(action!);
    }

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 14, 14, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: headerChildren,
            ),
            const SizedBox(height: 12),
            ...children,
          ],
        ),
      ),
    );
  }
}
