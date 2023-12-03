
import 'package:flutter/material.dart';

class CustomActionWidget extends StatelessWidget {
  const CustomActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Abdelrahman Ibrahem",
            ),
            Text(
              "Sadat city",
            ),
          ],
        ),
        CircleAvatar(
          radius: 45,
        ),
      ],
    );
  }
}