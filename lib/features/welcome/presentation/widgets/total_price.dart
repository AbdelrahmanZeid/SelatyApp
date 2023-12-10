
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
       horizontal:isPortrait(context)? 15:25
      ),
      child: Container(
        width: double.infinity,
        height:isPortrait(context)? AppSize.getHeight(
          140,
        ):AppSize.getHeight(
          100,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
             const   Text(
                  "4",
                  style: TextStyle(
                    color: AppColor.green,
                  ),
                ),
             const   Text(
                  " 100.00",
                  style: TextStyle(),
                ),
             const   Text(
                  "free",
                ),
                Text(
                  "100.00 Sar",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: isPortrait(context)?AppSize.getFontSize(20,):AppSize.getFontSize(10,),
                  ),
                ),
              ],
            ),
            addSpace(
              0,
              25,
            ),
           Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
             const   Text(
                  "البنود",
                ),
              const  Text(
                  "المجموع الفرعي",
                  style: TextStyle(),
                ),
              const  Text(
                  "رسوم التوصيل",
                  style: TextStyle(
                      // fontWeight: FontWeight.w700,
                      ),
                ),
                Text(
                  "الاجمالي",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: isPortrait(context)?AppSize.getFontSize(20,):AppSize.getFontSize(10,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
