import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/features/category/presentation/widgets/category_portait.dart';
import 'package:selaty/features/category/presentation/widgets/categoy_land_scape.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.darkGrey,
        body: const CategoryViewBody(),
        bottomNavigationBar: Container(
          color: Colors.green,
          height: 35,
        ),
      ),
    );
  }
}

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return isPortrait(context)
        ? const CategoryPortait()
        : const CategoryLandScape();
  }
}

