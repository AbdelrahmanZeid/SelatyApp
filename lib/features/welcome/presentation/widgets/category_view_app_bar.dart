import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class CategoryViewAppBar extends StatelessWidget {
  const CategoryViewAppBar({super.key, this.title, required this.txtColor});
  final String? title;
  final Color txtColor;
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
            child: GestureDetector(
              onTap: () => navigation(
                context,
                "/emptybag",
              ),
              child: const Icon(
                size: 20,
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
          ),
          const Spacer(),
          Text(
            title!,
            style: TextStyle(
              fontSize:isPortrait(context)? 18:22,
              fontWeight: FontWeight.w600,
              color: txtColor,
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
