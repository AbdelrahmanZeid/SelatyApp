import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';

class CategoryViewAppBar extends StatelessWidget {
  const CategoryViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const Spacer(),
          Container(
            width: isPortrait(context)
                ? AppSize.getWidth(
                    35,
                  )
                : AppSize.getWidth(
                    18,
                  ),
            height: isPortrait(context)
                ? AppSize.getHeight(
                    32,
                  )
                : AppSize.getHeight(
                    32,
                  ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
              color: Colors.white,
            ),
            child: const Icon(
              size: 20,
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          const Text(
            AppStrings.category,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => goBack(
              context,
            ),
            child: Container(
              padding: const EdgeInsets.only(
                left: 7,
              ),
              width: isPortrait(
                context,
              )
                  ? AppSize.getWidth(
                      35,
                    )
                  : AppSize.getWidth(
                      18,
                    ),
              height: isPortrait(
                context,
              )
                  ? AppSize.getHeight(
                      32,
                    )
                  : AppSize.getHeight(
                      32,
                    ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12,
                ),
                color: Colors.white,
              ),
              child: GestureDetector(
                onTap: () => goBack(
                  context,
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
