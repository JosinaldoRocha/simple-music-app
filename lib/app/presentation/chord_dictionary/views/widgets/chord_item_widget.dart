import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ChordItemWidget extends StatelessWidget {
  const ChordItemWidget({
    Key? key,
    required this.title,
    required this.cipher,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final String? cipher;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightColors.secondary,
        //elevation: 0,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onTap,
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: lightColors.secondary,
            ),
            child: Center(
              child: Text(
                'A$cipher',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 25),
          BoxText.titleMedium(title),
        ],
      ),
    );
  }
}
