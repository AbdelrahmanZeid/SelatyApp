import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/welcome/presentation/widgets/category_portait.dart';
import 'package:selaty/features/welcome/presentation/widgets/categoy_land_scape.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:selaty/features/welcome/presentation/widgets/favorite_view_body.dart';
import 'package:selaty/features/welcome/presentation/widgets/notification_view_body.dart';
import 'package:selaty/features/welcome/presentation/widgets/profile_view_body.dart';
import 'package:selaty/features/welcome/presentation/widgets/search_view_body.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  int _selectedPageIndex = 2;

  List<Widget> viewsList = const [
    SearchViewBody(),
    FavoriteViewBody(),
    CategoryViewBody(),
    NotificationViewBody(),
    ProfileViewBody(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.darkGrey,
        body: viewsList[_selectedPageIndex],
        bottomNavigationBar: ConvexAppBar(
          height:isPortrait(context)? AppSize.getHeight(
            45,
          ):AppSize.getHeight(
            35,
          ),
          style: TabStyle.fixed,
          backgroundColor:const Color(0xffF3F3F3,),
          items: [
            TabItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: _selectedPageIndex == 0 ? Colors.green : Colors.black,
              ),
           title: 'Search',
            ),
            TabItem(
              icon: Icon(
                Icons.favorite_outline,
                color: _selectedPageIndex == 1 ? Colors.green : Colors.black,
              ),
             title: 'favorite',
            ),
            TabItem(
              icon: Image.asset(
                Assets.assetsImagesLogo,
                fit: BoxFit.fitWidth,
               // color:  Color(0xffF3F3F3,),
              ),
             title: 'Add',
            ),
            TabItem(
              icon: Icon(
                Icons.notifications_outlined,
                color: _selectedPageIndex == 3 ? Colors.green : Colors.black,
              ),
              title: 'notification',
            ),
            TabItem(
              icon: Icon(
                Icons.person_outline,
                color: _selectedPageIndex == 4 ? Colors.green : Colors.black,
              ),
              title: 'Profile',
            ),
          ],
          initialActiveIndex: 2,
          onTap: _selectPage,
        ),
      ),
    );
  }
}

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return isPortrait(context)
        ? const CategoryPortait()
        : const CategoryLandScape();
  }
}
