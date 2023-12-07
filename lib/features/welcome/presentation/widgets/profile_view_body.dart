import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/welcome/presentation/widgets/category_view_app_bar.dart';
import 'package:selaty/features/welcome/presentation/widgets/edit_profile_section.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Column(
        children: [
          addSpace(
            10,
          ),
          const CategoryViewAppBar(),
          addSpace(
            10,
          ),
          const EditProfileSection(),
          addSpace(
            15,
          ),
          const EditProfileGridView(),
          addSpace(
            12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.red,
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  height: AppSize.getHeight(
                    120,
                  ),
                  width: AppSize.getWidth(
                    140,
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.lightGreen,
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  height: AppSize.getHeight(
                    120,
                  ),
                  width: AppSize.getWidth(
                    150,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EditProfileGridView extends StatelessWidget {
  const EditProfileGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: DynamicHeightGridView(
        mainAxisSpacing: 10,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        builder: (BuildContext context, int index) {
          return const EditProfileItem();
        },
        itemCount: 9,
        crossAxisCount: 3,
      ),
    );
  }
}

class EditProfileItem extends StatelessWidget {
  const EditProfileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(
          0xffF2F2F2,
        ),
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      height: AppSize.getHeight(
        90,
      ),
    );
  }
}
