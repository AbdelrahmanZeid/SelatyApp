
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/features/category/presentation/widgets/category_view_item.dart';
import 'package:selaty/features/home/data/models/category_model.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicHeightGridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      builder: (BuildContext context, int index) {
        return  Padding(
          padding:  isPortrait(context)? EdgeInsets.only(
            left: 12,
            right: 12,
            top: 5,
            bottom: 5,
          ):EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 3,
          ),
          child: CategoryViewItem(
            categoryModel: catList[index],
          ),
        );
      },
      itemCount: catList.length,
      crossAxisCount:isPortrait(context)? 2:3,
      
    );
  }
}
