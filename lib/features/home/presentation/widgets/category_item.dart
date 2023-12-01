import 'package:flutter/material.dart';
import 'package:selaty/features/home/data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      categoryModel.image,
    );
  }
}
