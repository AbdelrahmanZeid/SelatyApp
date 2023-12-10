
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class EditProfileItem extends StatelessWidget {
  const EditProfileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(
          0xffF2F2F2,
        ),
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      height:isPortrait(context)? AppSize.getHeight(
        90,
      ):AppSize.getHeight(
        90,
      ),
    );
  }
}
