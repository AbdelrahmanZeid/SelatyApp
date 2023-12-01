// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';
import 'package:selaty/features/home/presentation/widgets/best_value.dart';
import 'package:selaty/features/home/presentation/widgets/custom_action_widget.dart';
import 'package:selaty/features/home/presentation/widgets/custom_search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: getLeading(
            Icons.shopping_bag_outlined,
          ),
          actions: const [
            CustomActionWidget(),
          ],
        ),
        body: const HomeViewBody(),
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
      ],
    );
  }
}
