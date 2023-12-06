// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';

import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';
import 'package:selaty/features/home/data/models/best_sell_model.dart';
import 'package:selaty/features/home/data/models/card_model.dart';
import 'package:selaty/features/home/presentation/widgets/best_value.dart';
import 'package:selaty/features/home/presentation/widgets/category_list_view.dart';
import 'package:selaty/features/home/presentation/widgets/custom_action_widget.dart';
import 'package:selaty/features/home/presentation/widgets/custom_best_value_item.dart';
import 'package:selaty/features/home/presentation/widgets/custom_grid_view.dart';
import 'package:selaty/features/home/presentation/widgets/custom_most_sell_item.dart';
import 'package:selaty/features/home/presentation/widgets/custom_search_bar.dart';
import 'package:selaty/features/home/presentation/widgets/custom_shopping_grid_view.dart';
import 'package:selaty/features/home/presentation/widgets/custom_watch_all_widget.dart';
import 'package:selaty/features/home/presentation/widgets/fresh_list_view.dart';

class HomePortait extends StatelessWidget {
  const HomePortait({
    super.key,
  });

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
          child: addSpace(
            15,
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
              addSpace(
                0,
                10,
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
          child: addSpace(
            15,
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
          child: addSpace(
            15,
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
          child: addSpace(
            10,
          ),
        ),
        const SliverToBoxAdapter(
          child: CategoryListView(),
        ),
        SliverToBoxAdapter(
          child: addSpace(
            10,
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
          child: addSpace(
            10,
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomGridViewWidget(),
        ),
        SliverToBoxAdapter(
          child: addSpace(
            10,
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
          child: addSpace(
            10,
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
          child: addSpace(
            10,
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomShoppingGridView(),
        ),
        SliverToBoxAdapter(
          child: addSpace(
            8,
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
                AppStrings.fresh,
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
          child: addSpace(
            10,
          ),
        ),
        const SliverToBoxAdapter(
          child: FreshListView(),
        ),
        SliverToBoxAdapter(
          child: addSpace(
            10,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomBestValueItem(
            card: cardsList[4],
          ),
        ),
        SliverToBoxAdapter(
          child: addSpace(
            10,
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
                    AppStrings.takeChance,
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
          child: addSpace(
            10,
          ),
        ),
        const SliverToBoxAdapter(
          child: TakeChanceListView(),
        ),
      ],
    );
  }
}

class TakeChanceListView extends StatelessWidget {
  const TakeChanceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.getHeight(
        180,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: TakeChanceItem(
              takeChance: takeChanceList[index],
            ),
          );
        },
        itemCount: takeChanceList.length,
      ),
    );
  }
}

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
                  fontSize: AppSize.getFontSize(
                    16,
                  ),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Image.asset(
            takeChance.image,
            width: AppSize.getWidth(
              118,
            ),
            height: AppSize.getHeight(
              45,
            ),
            fit: BoxFit.cover,
          ),
          const Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: AppSize.getHeight(
                  28,
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
                  width: AppSize.getWidth(
                    25,
                  ),
                  height: AppSize.getHeight(
                    25,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.red,
                    borderRadius: BorderRadius.circular(
                      25,
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

class TakeChance {
  final String title;
  final String subTitle;
  final String image;
  TakeChance({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

List<TakeChance> takeChanceList = [
  TakeChance(
    image: Assets.assetsImagesMoz,
    title: AppStrings.takeChance,
    subTitle: AppStrings.discount,
  ),
  TakeChance(
    image: Assets.assetsImagesFlfl,
    title: AppStrings.takeChance,
    subTitle: AppStrings.discount,
  ),
  TakeChance(
    image: Assets.assetsImagesApple,
    title: AppStrings.takeChance,
    subTitle: AppStrings.discount,
  ),
];
