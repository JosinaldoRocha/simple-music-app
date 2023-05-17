import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeRedCardWidget extends StatelessWidget {
  const HomeRedCardWidget({
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
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            backgroundColor: lightColors.primary,
          ),
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(
                      image,
                      package: 'design_system',
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              BoxText.titleLarge(
                title,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
