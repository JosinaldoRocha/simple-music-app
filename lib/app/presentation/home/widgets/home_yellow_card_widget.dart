import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeYellowCardWidget extends StatelessWidget {
  const HomeYellowCardWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            backgroundColor: lightColors.secondary,
          ),
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BoxText.titleLarge(title),
              const SizedBox(width: 20),
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  image,
                  package: 'design_system',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
