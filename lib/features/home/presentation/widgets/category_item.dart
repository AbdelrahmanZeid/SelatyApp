import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';
import '../../data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigation(
        context,
        "/category",
      ),
      child: AspectRatio(
        aspectRatio: isPortrait(context) ? .95 : 1,
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
                        35,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top:isPortrait(context)? -28:-30,
                    left:isPortrait(context)? 32:25,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 26,
                      child: CircleAvatar(
                        backgroundColor: categoryModel.color,
                        radius: 22,
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
          ),
        ),
      ),
    );
  }
}
