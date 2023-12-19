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
              30,
            ),
            const ProfileViewAppBar(
              txtColor: Colors.black,
              title: "",
            ),
            addSpace(
              25,
            ),
            const EditProfileSection(),
            addSpace(
              10,
            ),
            const EditProfileGridView(),
            addSpace(
              8,
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
                      color: const Color(
                        0xffDD434F,
                      ),
                      borderRadius: isPortrait(context)
                          ? BorderRadius.circular(
                              30,
                            )
                          : BorderRadius.circular(
                              20,
                            ),
                    ),
                    height: isPortrait(context)
                        ? AppSize.getHeight(
                            110,
                          )
                        : AppSize.getHeight(
                            75,
                          ),
                    width: isPortrait(
                      context,
                    )
                        ? AppSize.getWidth(
                            140,
                          )
                        : AppSize.getWidth(
                            40,
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
                                  20,
                                ),
                          height: isPortrait(context)
                              ? AppSize.getHeight(
                                  60,
                                )
                              : AppSize.getHeight(
                                  40,
                                ),
                          decoration: BoxDecoration(
                            color: const Color(
                              0xffF16C75,
                            ),
                            borderRadius: isPortrait(context)
                                ? BorderRadius.circular(
                                    30,
                                  )
                                : BorderRadius.circular(
                                    10,
                                  ),
                          ),
                          child: const Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "تسجيل الخروج",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:isPortrait(context)? AppSize.getFontSize(
                              15,
                            ):AppSize.getFontSize(
                              5,
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.lightGreen,
                      borderRadius: isPortrait(context)
                          ? BorderRadius.circular(
                              30,
                            )
                          : BorderRadius.circular(
                              20,
                            ),
                    ),
                     height: isPortrait(context)
                        ? AppSize.getHeight(
                            110,
                          )
                        : AppSize.getHeight(
                            75,
                          ),
                    width: isPortrait(
                      context,
                    )
                        ? AppSize.getWidth(
                            140,
                          )
                        : AppSize.getWidth(
                            40,
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
                                  20,
                                ),
                          height: isPortrait(context)
                              ? AppSize.getHeight(
                                  60,
                                )
                              : AppSize.getHeight(
                                  40,
                                ),
                          decoration: BoxDecoration(
                            color: const Color(
                              0xff60D5A1,
                            ),
                            borderRadius: isPortrait(context)
                                ? BorderRadius.circular(
                                    30,
                                  )
                                : BorderRadius.circular(
                                    10,
                                  ),
                          ),
                          child: const Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "مركز الدعم",
                          style: TextStyle(
                            color: Colors.white,
                             fontSize:isPortrait(context)? AppSize.getFontSize(
                              15,
                            ):AppSize.getFontSize(
                              5,
                            ),
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
