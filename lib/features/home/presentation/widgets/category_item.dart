import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/app_size.dart';
import '../../data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .95,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: AppSize.getHeight(
                10,
              ),
            ),
            Center(
              child: Text(
                categoryModel.title,
              ),
            ),
            const Spacer(),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  categoryModel.bgImage,
                  width: double.infinity,
                  height: AppSize.getHeight(
                    40,
                  ),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: -28,
                  left: 25,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 26,
                    child: CircleAvatar(
                      backgroundColor: categoryModel.color,
                      radius: 22,
                      child: ClipRRect(
                        borderRadius:const BorderRadius.only(
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
        ),
      ),
    );
  }
}
