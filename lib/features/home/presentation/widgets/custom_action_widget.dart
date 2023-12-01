
import 'package:flutter/material.dart';

class CustomActionWidget extends StatelessWidget {
  const CustomActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Text(
              "Abdelrahman Ibrahem",
            ),
            Text(
              "zeid4643@gmail.com",
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