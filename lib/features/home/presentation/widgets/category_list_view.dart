
import 'package:flutter/material.dart';
import '../../../../core/utils/app_size.dart';
import '../../data/models/category_model.dart';
import 'category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.getHeight(
        100,
        
      ),
      child: ListView.builder(
     //  padding: EdgeInsets.symmetric(horizontal: 10,),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3,),
            child: CategoryItem(
              categoryModel: catList[index],
            ),
          );
        },
        itemCount: catList.length,
      ),
    );
  }
}