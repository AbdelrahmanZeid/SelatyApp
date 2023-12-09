import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/features/welcome/presentation/widgets/category_portait.dart';
import 'package:selaty/features/welcome/presentation/widgets/categoy_land_scape.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return isPortrait(context)
        ? const CategoryPortait()
        : const CategoryLandScape();
  }
}