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
                      ? SizedBox(
                          width: AppSize.getWidth(
                            78,
                          ),
                          height: AppSize.getHeight(
                            75,
                          ),
                          // radius: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              50,
                            ),
                            child: Image.asset(
                              Assets.assetsImagesApple,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : SizedBox(
                          width: AppSize.getWidth(
                            28,
                          ),
                          height: AppSize.getHeight(
                            58,
                          ),
                          // radius: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              70,
                            ),
                            child: Image.asset(
                              Assets.assetsImagesApple,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
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
