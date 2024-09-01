import 'dart:ui';

class CategoryModel {
  final String name;
  final String imageName;
  final Color color;
  final String id;

  CategoryModel(
      {required this.id,
      required this.name,
      required this.color,
      required this.imageName});
}
