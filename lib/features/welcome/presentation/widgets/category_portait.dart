import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';
import 'package:selaty/features/welcome/presentation/widgets/category_grid_view.dart';
import 'package:selaty/features/welcome/presentation/widgets/category_view_app_bar.dart';

class CategoryPortait extends StatelessWidget {
  const CategoryPortait({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppSize.getHeight(
            15,
          ),
        ),
        const CategoryViewAppBar(
          title: AppStrings.category, txtColor: Colors.black,
        ),
        SizedBox(
          height: AppSize.getHeight(
            15,
          ),
        ),
        const CategoryGridView(),
      ],
    );
  }
}
