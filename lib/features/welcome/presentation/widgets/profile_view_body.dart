import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/welcome/presentation/widgets/edit_profile_grid_view.dart';
import 'package:selaty/features/welcome/presentation/widgets/edit_profile_section.dart';
import 'package:selaty/features/welcome/presentation/widgets/profile_view_app_bar.dart';

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
            const ProfileViewAppBar(
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
                      color:const Color(
                        0xffDD434F,
                      ),
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    height: AppSize.getHeight(
                      110,
                    ),
                    width: isPortrait(
                      context,
                    )
                        ? AppSize.getWidth(
                            140,
                          )
                        : AppSize.getWidth(
                            70,
                          ),
                    child: Column(
                      children: [
                        const Spacer(),
                        Container(
                          width: isPortrait(
                            context,
                          )
                              ? AppSize.getWidth(
                                  65,
                                )
                              : AppSize.getWidth(
                                 30,
                                ),
                          height: AppSize.getHeight(
                            60,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(
                              0xffF16C75,
                            ),
                            borderRadius:isPortrait(context)? BorderRadius.circular(
                              30,
                            ):BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: const Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "تسجيل الخروج",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
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
                    width: isPortrait(context)
                        ? AppSize.getWidth(
                            140,
                          )
                        : AppSize.getWidth(
                            80,
                          ),
                    child: Column(
                      children: [
                        const Spacer(),
                        Container(
                          width: isPortrait(
                            context,
                          )
                              ? AppSize.getWidth(
                                  65,
                                )
                              : AppSize.getWidth(
                                  30,
                                ),
                          height: AppSize.getHeight(
                            60,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(
                              0xff60D5A1,
                            ),
                            borderRadius:isPortrait(context)? BorderRadius.circular(
                              30,
                            ):BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: const Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "مركز الدعم",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                      ],
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
