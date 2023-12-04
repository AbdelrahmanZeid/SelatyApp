import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';
import '../../../../core/utils/app_strings.dart';
import 'custom_button.dart';

class ChangePassSuccessViewBody extends StatelessWidget {
  const ChangePassSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return isPortrait(context)
        ? Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 55,
              vertical: 120,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isPortrait(context)
                      ? Image.asset(
                          Assets.assetsImagesPhoto20231129232735,
                        )
                      : Image.asset(
                          Assets.assetsImagesPhoto20231129232735,
                          height: AppSize.getHeight(
                            170,
                          ),
                          width: AppSize.getWidth(
                            150,
                          ),
                        ),
                  isPortrait(context)
                      ? SizedBox(
                          height: AppSize.getHeight(
                            25,
                          ),
                        )
                      : SizedBox(
                          height: AppSize.getHeight(
                            15,
                          ),
                        ),
                  Text(
                    AppStrings.yourpassHere,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isPortrait(context)
                          ? AppSize.getFontSize(
                              18,
                            )
                          : AppSize.getFontSize(
                              14,
                            ),
                    ),
                  ),
                  SizedBox(
                    height: AppSize.getHeight(
                      25,
                    ),
                  ),
                  CustomButton(
                    color: Colors.white,
                    text: AppStrings.done,
                    txtColor: AppColor.onBoardingOneColor,
                    onPressed: () => navigationWithReplace(
                      context,
                      "/login",
                    ),
                  ),
                ],
              ),
            ),
          )
        : SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   SizedBox(
                    height: AppSize.getHeight(
                      25,
                    ),
                  ),
                  isPortrait(context)
                      ? Image.asset(
                          Assets.assetsImagesPhoto20231129232735,
                        )
                      : Image.asset(
                          Assets.assetsImagesPhoto20231129232735,
                          height: AppSize.getHeight(
                            170,
                          ),
                          width: AppSize.getWidth(
                            150,
                          ),
                        ),
                  isPortrait(context)
                      ? SizedBox(
                          height: AppSize.getHeight(
                            25,
                          ),
                        )
                      : SizedBox(
                          height: AppSize.getHeight(
                            15,
                          ),
                        ),
                  Text(
                    AppStrings.yourpassHere,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isPortrait(context)
                          ? AppSize.getFontSize(
                              18,
                            )
                          : AppSize.getFontSize(
                              12,
                            ),
                    ),
                  ),
                  SizedBox(
                    height: AppSize.getHeight(
                      20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 230,),
                    child: CustomButton(
                      color: Colors.white,
                      text: AppStrings.done,
                      txtColor: AppColor.onBoardingOneColor,
                      onPressed: () => navigationWithReplace(
                        context,
                        "/login",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
