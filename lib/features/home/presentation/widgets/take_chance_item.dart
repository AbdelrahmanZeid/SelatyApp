
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/home/data/models/take_chance_model.dart';

class TakeChanceItem extends StatelessWidget {
  const TakeChanceItem({super.key, required this.takeChance});
  final TakeChance takeChance;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: isPortrait(context)
          ? AppSize.getHeight(
              220,
            )
          : AppSize.getHeight(
              230,
            ),
      width: isPortrait(context)
          ? AppSize.getWidth(
              120,
            )
          : AppSize.getWidth(
              100,
            ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          12,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(
              0.5,
            ),
            blurRadius: 3,
            offset: const Offset(
              0,
              5,
            ),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
              top: 10,
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                takeChance.title,
                style: const TextStyle(
                  color: AppColor.appTextColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
              top: 5,
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                takeChance.subTitle,
                style: TextStyle(
                  fontSize:isPortrait(context)? AppSize.getFontSize(
                    16,
                  ): AppSize.getFontSize(
                    10,
                  ),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
     isPortrait(context)?     Image.asset(
            takeChance.image,
            width: AppSize.getWidth(
              118,
            ),
            height: AppSize.getHeight(
              45,
            ),
            fit: BoxFit.cover,
          ): Image.asset(
            takeChance.image,
            width: AppSize.getWidth(
              118,
            ),
            height: AppSize.getHeight(
              110,
            ),
            fit: BoxFit.cover,
          ),
          const Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height:isPortrait(context)? AppSize.getHeight(
                  28,
                ):AppSize.getHeight(
                  35,
                ),
                decoration: const BoxDecoration(
                  color: AppColor.appTextColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      5,
                    ),
                    topLeft: Radius.circular(
                      5,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -12,
                right: 8,
                child: Container(
                  width:isPortrait(context)? AppSize.getWidth(
                    25,
                  ):AppSize.getWidth(
                   12,
                  ),
                  height:isPortrait(context)? AppSize.getHeight(
                    25,
                  ):AppSize.getHeight(
                    25,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.red,
                    borderRadius:isPortrait(context)? BorderRadius.circular(
                      25,
                    ):BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
