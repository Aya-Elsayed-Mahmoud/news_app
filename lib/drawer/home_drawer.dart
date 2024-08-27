import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final titleLargeStyle =
        Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 24);
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width * 0.7,
      child: Column(
        children: [
          Container(
            height: screenSize.height * 0.2,
            width: double.infinity,
            alignment: Alignment.center,
            color: AppTheme.primary,
            child: Text(
              'News App!',
              style: titleLargeStyle,
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsetsDirectional.only(top: 12, start: 12),
            color: AppTheme.white,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(Icons.menu),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Categories',
                        style: titleLargeStyle?.copyWith(color: AppTheme.black),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(Icons.settings_rounded),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Settings',
                        style: titleLargeStyle?.copyWith(color: AppTheme.black),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
