import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/features/welcome/presentation/widgets/edit_profile_item.dart';

class EditProfileGridView extends StatelessWidget {
  const EditProfileGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isPortrait(
          context,
        )
            ? 10
            : 170,
      ),
      child: DynamicHeightGridView(
        mainAxisSpacing: 10,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        builder: (BuildContext context, int index) {
          return const EditProfileItem(
            icon: Icons.production_quantity_limits,
            text: "welcome",
          );
        },
        itemCount: 3,
        crossAxisCount: 3,
      ),
    );
  }
}
