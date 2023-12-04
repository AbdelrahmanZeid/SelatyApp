// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';

import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';
import 'package:selaty/features/home/data/models/card_model.dart';
import 'package:selaty/features/home/presentation/widgets/best_value.dart';
import 'package:selaty/features/home/presentation/widgets/category_list_view.dart';
import 'package:selaty/features/home/presentation/widgets/custom_action_widget.dart';
import 'package:selaty/features/home/presentation/widgets/custom_best_value_item.dart';
import 'package:selaty/features/home/presentation/widgets/custom_grid_view.dart';
import 'package:selaty/features/home/presentation/widgets/custom_most_sell_item.dart';
import 'package:selaty/features/home/presentation/widgets/custom_search_bar.dart';
import 'package:selaty/features/home/presentation/widgets/custom_watch_all_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Row(
            children: [
              const Spacer(),
              getLeading(
                Icons.shopping_bag_outlined,
              ),
              const Spacer(
                flex: 6,
              ),
              const CustomActionWidget(),
              const Spacer(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: AppSize.getHeight(
              15,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomSearchBar(),
        ),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                AppStrings.highSeller,
                style: TextStyle(
                  color: AppColor.appTextColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: AppSize.getWidth(
                  10,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 15,
                ),
                child: Text(
                  AppStrings.bestValue,
                  style: TextStyle(
                    color: AppColor.appTextColor2,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: AppSize.getHeight(
              15,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: BestValue(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: AppSize.getHeight(
              15,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              right: 15,
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                AppStrings.category,
                style: TextStyle(
                  color: AppColor.appTextColor2,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: AppSize.getHeight(
              10,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: CategoryListView(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: AppSize.getHeight(
              10,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CustomWatchAllTextWidget(),
                const Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    AppStrings.mostSell,
                    style: TextStyle(
                      color: AppColor.appTextColor2,
                      fontSize: AppSize.getFontSize(
                        25,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: AppSize.getHeight(
              10,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomGridViewWidget(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: AppSize.getHeight(
              10,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: CustomBestValueItem(
              card: cardsList[1],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: AppSize.getHeight(
              10,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              right: 15,
              left: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomWatchAllTextWidget(),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    AppStrings.shopping,
                    style: TextStyle(
                      color: AppColor.appTextColor2,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: AppSize.getHeight(
              10,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomShoppingGridView(),
        ),
      ],
    );
  }
}

class CustomShoppingGridView extends StatelessWidget {
  const CustomShoppingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.getHeight(
        300,
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
        ),
        child: DynamicHeightGridView(
          mainAxisSpacing: 12,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          builder: (BuildContext context, int index) {
            return CustomShoppingWidget(
              shoppingModel: shoppindList[index],
            );
          },
          itemCount: 6,
          crossAxisCount: 3,
        ),
      ),
    );
  }
}

class CustomShoppingWidget extends StatelessWidget {
  const CustomShoppingWidget({super.key, required this.shoppingModel});
  final ShoppingModel shoppingModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.getHeight(
        100,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        color: shoppingModel.color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            shoppingModel.upperTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSize.getFontSize(
                15,
              ),
            ),
          ),
          Text(
            shoppingModel.middleTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSize.getFontSize(
                25,
              ),
            ),
          ),
          Text(
            shoppingModel.lowerTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSize.getFontSize(
                15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShoppingModel {
  final Color color;
  final String upperTitle;
  final String middleTitle;
  final String lowerTitle;
  ShoppingModel({
    required this.middleTitle,
    required this.color,
    required this.upperTitle,
    required this.lowerTitle,
  });
}

List<ShoppingModel> shoppindList = [
  ShoppingModel(
    color: AppColor.purple,
    upperTitle: 'صفه',
    lowerTitle: 'خصم',
    middleTitle: "30%",
  ),
  ShoppingModel(
    color: AppColor.blue,
    upperTitle: 'صفه',
    lowerTitle: 'خصم',
    middleTitle: "40%",
  ),
  ShoppingModel(
    color: AppColor.red,
    upperTitle: 'صفه',
    lowerTitle: 'خصم',
    middleTitle: "50%",
  ),
  ShoppingModel(
    color: AppColor.lightBlue,
    upperTitle: 'صفه',
    lowerTitle: 'خصم',
    middleTitle: "70%",
  ),
  ShoppingModel(
    color: AppColor.darkGreen,
    upperTitle: 'صفه',
    lowerTitle: 'خصم',
    middleTitle: "20%",
  ),
  ShoppingModel(
    color: AppColor.yellow,
    upperTitle: 'صفه',
    lowerTitle: 'خصم',
    middleTitle: "30%",
  ),
];





























































































// class HomeViewBody extends StatelessWidget {
//   const HomeViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         SliverToBoxAdapter(
//           child: SizedBox(
//             height: AppSize.getHeight(
//               15,
//             ),
//           ),
//         ),
//         const SliverToBoxAdapter(
//           child: CustomSearchBar(),
//         ),
//         SliverToBoxAdapter(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               const Text(
//                 AppStrings.highSeller,
//                 style: TextStyle(
//                   color: AppColor.appTextColor,
//                   fontSize: 15,
//                 ),
//               ),
//               SizedBox(
//                 width: AppSize.getWidth(
//                   10,
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(
//                   right: 15,
//                 ),
//                 child: Text(
//                   AppStrings.bestValue,
//                   style: TextStyle(
//                     color: AppColor.appTextColor2,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SliverToBoxAdapter(
//           child: SizedBox(
//             height: AppSize.getHeight(
//               15,
//             ),
//           ),
//         ),
//         const SliverToBoxAdapter(
//           child: Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 15,
//             ),
//             child: BestValue(),
//           ),
//         ),
//         SliverToBoxAdapter(
//           child: SizedBox(
//             height: AppSize.getHeight(
//               15,
//             ),
//           ),
//         ),
//         const SliverToBoxAdapter(
//           child: Padding(
//             padding: EdgeInsets.only(
//               right: 15,
//             ),
//             child: Align(
//               alignment: Alignment.centerRight,
//               child: Text(
//                 AppStrings.category,
//                 style: TextStyle(
//                   color: AppColor.appTextColor2,
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         SliverToBoxAdapter(
//           child: SizedBox(
//             height: AppSize.getHeight(
//               10,
//             ),
//           ),
//         ),
//         const SliverToBoxAdapter(
//           child: CategoryListView(),
//         ),
//         SliverToBoxAdapter(
//           child: SizedBox(
//             height: AppSize.getHeight(
//               10,
//             ),
//           ),
//         ),
//         const SliverToBoxAdapter(
//           child: Padding(
//             padding: EdgeInsets.only(
//               right: 15,
//             ),
//             child: Align(
//               alignment: Alignment.centerRight,
//               child: Text(
//                 AppStrings.mostSell,
//                 style: TextStyle(
//                   color: AppColor.appTextColor2,
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         SliverToBoxAdapter(
//           child: SizedBox(
//             height: AppSize.getHeight(
//               10,
//             ),
//           ),
//         ),
//         const SliverToBoxAdapter(
//           child: CustomGridViewWidget(),
//         ),
//         SliverToBoxAdapter(
//           child: SizedBox(
//             height: AppSize.getHeight(
//               10,
//             ),
//           ),
//         ),
//         SliverToBoxAdapter(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 5,),
//             child: CustomBestValueItem(
//               card: cardsList[1],
//             ),
//           ),
//         ),
//          SliverToBoxAdapter(
//           child: SizedBox(
//             height: AppSize.getHeight(
//               10,
//             ),
//           ),
//         ),
//           const SliverToBoxAdapter(
//           child: Padding(
//             padding: EdgeInsets.only(
//               right: 15,
//             ),
//             child: Align(
//               alignment: Alignment.centerRight,
//               child: Text(
//                 AppStrings.shopping,
//                 style: TextStyle(
//                   color: AppColor.appTextColor2,
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
