import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class Product extends StatelessWidget {
  const Product(
      {super.key,
      required this.price,
      required this.title,
      required this.weight});
  final String price;
  final String title;
  final String weight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal:isPortrait(context)? 15:25,
      ),
      child: Dismissible(
        background: Container(
          decoration: BoxDecoration(
            color: AppColor.red,
            borderRadius: BorderRadius.circular(
              6,
            ),
          ),
          child: const Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
        key: const Key(
          "myKey",
        ),
        child: Container(
          width: double.infinity,
          height:isPortrait(context)? AppSize.getHeight(
            100,
          ):AppSize.getHeight(
            70,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              6,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      color: AppColor.green,
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    weight,
                  ),
                ],
              ),
              addSpace(
                0,
                25,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.add,
                    size: 15,
                  ),
                  Text(
                    "3",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.add,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
