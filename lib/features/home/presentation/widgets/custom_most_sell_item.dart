import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_size.dart';
import '../../data/models/best_sell_model.dart';

class CustomMostSellItem extends StatelessWidget {
  const CustomMostSellItem({super.key, required this.bsetSellModel});

  final BestSellModel bsetSellModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.getHeight(
        220,
      ),
      width: AppSize.getWidth(
        120,
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
              width: AppSize.getWidth(
                60,
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
          const Padding(
            padding: EdgeInsets.all(
              5.0,
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                '5Kg',
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: AppSize.getHeight(
              30,
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
                      fontSize: AppSize.getFontSize(
                        15,
                      ),
                    ),
                  ),
                ),
                 Positioned(
                  left:10,
                  top: -7,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      color: AppColor.onBoardingOneColor,
                    ),
                    child: const Icon(
                      Icons.abc,
                      size: 30,
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
