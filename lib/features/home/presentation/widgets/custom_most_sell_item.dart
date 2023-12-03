import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/home/data/models/best_sell_model.dart';

class CustomMostSellItem extends StatelessWidget {
  const CustomMostSellItem({super.key, required this.bsetSellModel});

  final BestSellModel bsetSellModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          12,
        ),
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
              10,
            ),
          ),
          Image.asset(
            bsetSellModel.image,
            width: double.infinity,
            height: AppSize.getHeight(
              40,
            ),
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: AppSize.getHeight(
              15,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: AppSize.getWidth(
                80,
              ),
              height: AppSize.getHeight(
                20,
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
          SizedBox(
            height: AppSize.getHeight(
              15,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColor.grey,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text("\$ ${bsetSellModel.price}"),
            ),
          ),
        ],
      ),
    );
  }
}
