import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_button.dart';
import 'package:selaty/features/welcome/presentation/widgets/category_view_app_bar.dart';
import 'package:selaty/features/welcome/presentation/widgets/product.dart';
import 'package:selaty/features/welcome/presentation/widgets/total_price.dart';

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
            25,
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
