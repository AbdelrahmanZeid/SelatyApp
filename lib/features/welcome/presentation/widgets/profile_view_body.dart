import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/welcome/presentation/widgets/category_view_app_bar.dart';
import 'package:selaty/features/welcome/presentation/widgets/edit_profile_grid_view.dart';
import 'package:selaty/features/welcome/presentation/widgets/edit_profile_section.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            addSpace(
              10,
            ),
            const CategoryViewAppBar(
              txtColor: Colors.black,
              title: "",
            ),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.red,
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    height: AppSize.getHeight(
                      110,
                    ),
                   width:isPortrait(context)? AppSize.getWidth(
                      140,
                    ):AppSize.getWidth(
                    70,
                    ),
                  ),
                // const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.lightGreen,
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    height: AppSize.getHeight(
                      110,
                    ),
                    width:isPortrait(context)? AppSize.getWidth(
                      140,
                    ):AppSize.getWidth(
                    80,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
