import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class EditProfileItem extends StatelessWidget {
  const EditProfileItem({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(
          0xffF2F2F2,
        ),
        borderRadius:isPortrait(context)? BorderRadius.circular(
          30,
        ): BorderRadius.circular(
         20,
        ),
      ),
      height: isPortrait(
        context,
      )
          ? AppSize.getHeight(
              90,
            )
          : AppSize.getHeight(
              75,
            ),
      child: Column(
        children: [
          const Spacer(),
          Container(
            width: isPortrait(
              context,
            )
                ? AppSize.getWidth(
                    45,
                  )
                : AppSize.getWidth(
                    20,
                  ),
            height: AppSize.getHeight(
              40,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                50,
              ),
            ),
            child: Icon(
              icon,
            ),
          ),
          const Spacer(),
          Text(
            text,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
