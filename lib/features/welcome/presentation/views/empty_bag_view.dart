import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/welcome/presentation/widgets/empty_bag_view_body.dart';
import 'package:selaty/features/welcome/presentation/widgets/favorite_view_body.dart';
import 'package:selaty/features/welcome/presentation/widgets/notification_view_body.dart';
import 'package:selaty/features/welcome/presentation/widgets/profile_view_body.dart';
import 'package:selaty/features/welcome/presentation/widgets/search_view_body.dart';

class EmptyBag extends StatefulWidget {
  const EmptyBag({super.key});

  @override
  State<EmptyBag> createState() => _EmptyBagState();
}

class _EmptyBagState extends State<EmptyBag> {
  @override
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  int _selectedPageIndex = 2;

  List<Widget> viewsList = const [
    SearchViewBody(),
    FavoriteViewBody(),
    EmptyBagViewBody(),
    NotificationViewBody(),
    ProfileViewBody(),
  ];
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.darkGrey,
        body: viewsList[_selectedPageIndex],
        bottomNavigationBar: ConvexAppBar(
          height: isPortrait(context)
              ? AppSize.getHeight(
                  45,
                )
              : AppSize.getHeight(
                 41,
                ),
          style: TabStyle.fixed,
          backgroundColor: Colors.white,
          items: [
            TabItem(
              icon: Icon(
                Icons.search,
                color: _selectedPageIndex == 0 ? Colors.green : Colors.black,
              ),
              title: isPortrait(context) ? 'Search' : null,
            ),
            TabItem(
              icon: Icon(
                Icons.favorite_outline,
                color: _selectedPageIndex == 1 ? Colors.green : Colors.black,
              ),
              title: isPortrait(context) ? 'favorite' : null,
            ),
            TabItem(
              icon: Image.asset(
                Assets.assetsImagesLogo,
                fit: BoxFit.cover,
              ),
              title: isPortrait(context) ? 'Add' : null,
            ),
            TabItem(
              icon: Icon(
                Icons.notifications_outlined,
                color: _selectedPageIndex == 3 ? Colors.green : Colors.black,
              ),
              title: isPortrait(context) ? 'notification' : null,
            ),
            TabItem(
              icon: Icon(
                Icons.person_outline,
                color: _selectedPageIndex == 4 ? Colors.green : Colors.black,
              ),
              title: isPortrait(context) ? 'Profile' : null,
            ),
          ],
          initialActiveIndex: 2,
          onTap: _selectPage,
        ),
      ),
    );
  }
}
