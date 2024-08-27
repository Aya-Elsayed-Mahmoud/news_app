import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/category/category_item.dart';
import 'package:news_app/category/category_model.dart';

class CategoriesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = [
      CategoryModel(
          name: 'Sports', color: Color(0xFFC91C22), imageName: 'ball'),
      CategoryModel(
          name: 'Sports', color: Color(0xFFC91C22), imageName: 'ball'),
      CategoryModel(
          name: 'Sports', color: Color(0xFFC91C22), imageName: 'ball'),
      CategoryModel(
          name: 'Sports', color: Color(0xFFC91C22), imageName: 'ball'),
      CategoryModel(
          name: 'Sports', color: Color(0xFFC91C22), imageName: 'ball'),
      CategoryModel(name: 'Sports', color: Color(0xFFC91C22), imageName: 'ball')
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              'Pick your category of interest',
              style: AppTheme.lightTheme.textTheme.titleLarge
                  ?.copyWith(color: AppTheme.navy),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 24, crossAxisSpacing: 24),
              itemCount: categories.length,
              itemBuilder: (_, index) => CategoryItem(
                index: index,
                category: categories[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
