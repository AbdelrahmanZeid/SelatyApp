
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/home/data/models/category_model.dart';

class CategoryViewItem extends StatelessWidget {
  const CategoryViewItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:isPortrait(context)? AppSize.getHeight(
        120,
      ): AppSize.getHeight(
        70,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child:isPortrait(context)? Column(
        children: [
          SizedBox(
            height: AppSize.getHeight(
              10,
            ),
          ),
          Center(
            child: Text(
              categoryModel.title,
              style:const TextStyle(fontWeight: FontWeight.w600,),
            ),
          ),
        const  Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(
                    8,
                  ),
                  bottomRight: Radius.circular(
                    8,
                  ),
                ),
                child: Image.asset(
                  categoryModel.bgImage,
                  width: double.infinity,
                  height: AppSize.getHeight(
                    40,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: -35,
                left: 55,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: CircleAvatar(
                    backgroundColor: categoryModel.color,
                    radius: 26,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(
                          8,
                        ),
                        bottomRight: Radius.circular(
                          8,
                        ),
                      ),
                      child: SvgPicture.asset(
                        categoryModel.image,
                        color: Colors.white,
                        width: AppSize.getWidth(
                          30,
                        ),
                        height: AppSize.getHeight(
                          30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ): Column(
        children: [
          SizedBox(
            height: AppSize.getHeight(
              10,
            ),
          ),
          Center(
            child: Text(
              categoryModel.title,
              style:const TextStyle(fontWeight: FontWeight.w600,),
            ),
          ),
        const  Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(
                    8,
                  ),
                  bottomRight: Radius.circular(
                    8,
                  ),
                ),
                child: Image.asset(
                  categoryModel.bgImage,
                  width: double.infinity,
                  height: AppSize.getHeight(
                    24,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: -20,
                left: 93,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22,
                  child: CircleAvatar(
                    backgroundColor: categoryModel.color,
                    radius: 20,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(
                          8,
                        ),
                        bottomRight: Radius.circular(
                          8,
                        ),
                      ),
                      child: SvgPicture.asset(
                        categoryModel.image,
                        color: Colors.white,
                        width: AppSize.getWidth(
                          15,
                        ),
                        height: AppSize.getHeight(
                          15,
                        ),
                      ),
                    ),
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