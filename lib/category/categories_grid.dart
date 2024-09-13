import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/category/category_item.dart';
import 'package:news_app/category/category_model.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key, required this.onCategorySelected});

  final void Function(CategoryModel) onCategorySelected;
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = [
      CategoryModel(
          id: 'sports',
          name: 'Sports', color: Color(0xFFC91C22), imageName: 'ball'),
      CategoryModel(
          id: 'sports',
          name: 'Sports', color: Color(0xFFC91C22), imageName: 'ball'),
      CategoryModel(
          id: 'sports',
          name: 'Sports', color: Color(0xFFC91C22), imageName: 'ball'),
      CategoryModel(
          id: 'sports',
          name: 'Sports', color: Color(0xFFC91C22), imageName: 'ball'),
      CategoryModel(
          id: 'sports',
          name: 'Sports', color: Color(0xFFC91C22), imageName: 'ball'),
      CategoryModel(
          id: 'sports',
          name: 'Sports',
          color: Color(0xFFC91C22),
          imageName: 'ball')
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              itemBuilder: (_, index) {
                final category = categories[index];
                return GestureDetector(
                  onTap: () {
                    onCategorySelected(category);
                  },
                  child: CategoryItem(
                    index: index,
                    category: category,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
