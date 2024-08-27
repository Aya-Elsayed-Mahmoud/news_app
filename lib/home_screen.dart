import 'package:flutter/material.dart';
import 'package:news_app/drawer/home_drawer.dart';

import 'app_theme.dart';
import 'category/categories_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: AppTheme.white,
            image: DecorationImage(
                image: AssetImage("assets/images/pattern.png"))),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/pattern.png'),
            fit: BoxFit.fill,
          )),
          child: Scaffold(
            appBar: AppBar(
              title: const Text('News App'),
            ),
            drawer: const HomeDrawer(),
            body: CategoriesGrid(),
          ),
        ));
  }
}
