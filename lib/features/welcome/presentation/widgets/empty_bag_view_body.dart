import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_button.dart';
import 'package:selaty/features/welcome/presentation/widgets/category_view_app_bar.dart';
import 'package:selaty/features/welcome/presentation/widgets/product.dart';

class EmptyBagViewBody extends StatelessWidget {
  const EmptyBagViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        isPortrait(context)?  addSpace(
            15,
          ):addSpace(
           8,
          ),
          const CategoryViewAppBar(
            txtColor: Colors.black,
            title: "عربه التسوق",
          ),
         
          isPortrait(context)?  addSpace(
            15,
          ):addSpace(
            8,
          ),
          const Product(
            price: '200.0',
            title: 'كعب الغزال',
            weight: '1kg',
          ),
          isPortrait(context)?  addSpace(
            30,
          ):addSpace(
            17,
          ),
          const TotalPrice(),
          isPortrait(context)?  addSpace(
            15,
          ):addSpace(
           8,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(
              horizontal:isPortrait(context)? 15:25
            ),
            child: CustomButton(
              color: AppColor.green,
              text: "الدفع",
            ),
          ),
           isPortrait(context)?  addSpace(
            15,
          ):addSpace(
           35,
          ),
        ],
      ),
    );
  }
}

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
