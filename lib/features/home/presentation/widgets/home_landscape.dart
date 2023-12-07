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
import 'package:selaty/features/home/presentation/widgets/custom_search_bar.dart';
import 'package:selaty/features/home/presentation/widgets/custom_shopping_grid_view.dart';
import 'package:selaty/features/home/presentation/widgets/custom_watch_all_widget.dart';
import 'package:selaty/features/home/presentation/widgets/fresh_list_view.dart';
import 'package:selaty/features/home/presentation/widgets/take_chance_lis_view.dart';

class HomeLandScape extends StatelessWidget {
  const HomeLandScape({
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
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isPortrait(context) ? 25 : 20,
            ),
            child: const BestValue(),
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
                        15,
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
            child: isPortrait(context)
                ? CustomBestValueItem(
                    card: cardsList[1],
                  )
                : SizedBox(
                    height: AppSize.getHeight(
                      200,
                    ),
                    child: CustomBestValueItem(
                      card: cardsList[1],
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,),
            child: CustomBestValueItem(
              card: cardsList[4],
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
        SliverToBoxAdapter(
          child: addSpace(
            10,
          ),
        ),
      ],
    );
  }
}
