import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/home/presentation/widgets/custom_search_bar.dart';
import 'package:selaty/features/welcome/presentation/widgets/category_grid_view.dart';
import 'package:selaty/features/welcome/presentation/widgets/category_view_app_bar.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: AppSize.getHeight(
                150,
              ),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(
                  0xff5DB15C,
                ),
              ),
            ),
            Column(
              children: [
                addSpace(
                  20,
                ),
                const CategoryViewAppBar(
                  title: " الفاكهه",
                  txtColor: Colors.white,
                ),
                addSpace(
                  60,
                ),
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 40,
                    child: Image.asset(
                      Assets.assetsImagesFruits,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        addSpace(
          18,
        ),
        const CustomSearchBar(),
        addSpace(
          18,
        ),
        const CategoryGridView(),
      ],
    );
  }
}
