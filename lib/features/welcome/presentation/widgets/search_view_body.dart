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
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: isPortrait(context)
                    ? AppSize.getHeight(
                        150,
                      )
                    : AppSize.getHeight(
                        80,
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
                    10,
                  ),
                  const CategoryViewAppBar(
                    title: " الفاكهه",
                    txtColor: Colors.white,
                  ),
                  isPortrait(context)
                      ? addSpace(
                          55,
                        )
                      : addSpace(
                          0,
                        ),
                  isPortrait(context)
                      ? CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 40,
                            child: Image.asset(
                              Assets.assetsImagesChicken,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child: Positioned(
                            top: -30,
                            child: CircleAvatar(
                              radius: 30,
                              child: Image.asset(
                                Assets.assetsImagesFruits,
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            ],
          ),
          isPortrait(context)
              ? addSpace(
                  18,
                )
              : addSpace(
                  8,
                ),
          const CustomSearchBar(),
          isPortrait(context)
              ? addSpace(
                  18,
                )
              : addSpace(
                  5,
                ),
          const CategoryGridView(),
        ],
      ),
    );
  }
}
