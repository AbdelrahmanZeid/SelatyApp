import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_size.dart';
import '../../data/models/best_sell_model.dart';

class CustomMostSellItem extends StatelessWidget {
  const CustomMostSellItem({super.key, required this.bsetSellModel});

  final BestSellModel bsetSellModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:isPortrait(context)? AppSize.getHeight(
        220,
      ): AppSize.getHeight(
        230,
      ),
      width:isPortrait(context)? AppSize.getWidth(
        120,
      ):AppSize.getWidth(
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
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: AppColor.green,
                ),
              ),
              const Spacer(),
              Container(
                width: AppSize.getWidth(
                  30,
                ),
                height: AppSize.getHeight(
                  25,
                ),
                decoration: const BoxDecoration(
                  color: AppColor.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      20,
                    ),
                    bottomLeft: Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "جديد",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSize.getHeight(
              5,
            ),
          ),
          Image.asset(
            bsetSellModel.image,
            width: double.infinity,
            height: AppSize.getHeight(
              80,
            ),
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: AppSize.getHeight(
              8,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width:isPortrait(context)? AppSize.getWidth(
                60,
              ):AppSize.getWidth(
                45,
              ),
              height: AppSize.getHeight(
                18,
              ),
              decoration: BoxDecoration(
                color: AppColor.yellow,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  bsetSellModel.type,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              5.0,
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${bsetSellModel.weight}Kg',
              ),
            ),
          ),
          const Spacer(),
          Container(
            height:isPortrait(context)? AppSize.getHeight(
              30,
            ):AppSize.getHeight(
              40,
            ),
            decoration: BoxDecoration(
              color: AppColor.grey,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            width: double.infinity,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    " \$ ${bsetSellModel.price}",
                    style: TextStyle(
                      fontSize:isPortrait(context)? AppSize.getFontSize(
                        15,
                      ):AppSize.getFontSize(
                        11,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: -7,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:isPortrait(context)? BorderRadius.circular(
                        15,
                      ): BorderRadius.circular(
                        18,
                      ),
                      color: AppColor.onBoardingOneColor,
                    ),
                    child: Icon(
                      Icons.abc,
                      size:isPortrait(context)? 30:35,
                      color: Colors.white,
                    ),
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
