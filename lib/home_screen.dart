import 'package:flutter/material.dart';
import 'package:news_app/category/category_details.dart';
import 'package:news_app/category/category_model.dart';
import 'package:news_app/drawer/home_drawer.dart';
import 'package:news_app/settings/settings_tab.dart';

import 'app_theme.dart';
import 'category/categories_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            drawer: HomeDrawer(
              onItemSelected: onDrawerItemSelected,
            ),
            body: selectedCategory != null
                ? CategoryDetails(selectedCategory!.id)
                : selectedDrawerItem == DrawerItem.categories
                    ? CategoriesGrid(onCategorySelected: onCategorySelected)
                    : SettingsTab(),
          ),
        ));
  }

  DrawerItem selectedDrawerItem = DrawerItem.categories;
  CategoryModel? selectedCategory;

  void onDrawerItemSelected(DrawerItem drawerItem) {
    selectedDrawerItem = drawerItem;
    selectedCategory = null;
    setState(() {});
    Navigator.of(context).pop();
  }

  void onCategorySelected(CategoryModel category) {
    selectedCategory = category;
    setState(() {});
  }
}