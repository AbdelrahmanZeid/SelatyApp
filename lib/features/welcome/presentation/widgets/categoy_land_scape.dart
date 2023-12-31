
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/welcome/presentation/widgets/category_grid_view.dart';
import 'package:selaty/features/welcome/presentation/widgets/category_view_app_bar.dart';

class CategoryLandScape extends StatelessWidget {
  const CategoryLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: AppSize.getHeight(
           10,
          ),
        ),
        const CategoryViewAppBar(txtColor: Colors.black,title: "التصنيفات",),
        SizedBox(
          height: AppSize.getHeight(
            8,
          ),
        ),
        const CategoryGridView(),
      ],
    );
  }
}
