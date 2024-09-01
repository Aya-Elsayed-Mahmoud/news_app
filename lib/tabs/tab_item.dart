import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';

class TabItem extends StatelessWidget {
  const TabItem({super.key, required this.source, required this.isSelected});

  final String source;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: isSelected ? AppTheme.primary : Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        border: Border.all(width: 2, color: AppTheme.primary),
      ),
      child: Text(
        source,
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: isSelected ? AppTheme.white : AppTheme.primary),
      ),
    );
  }
}
