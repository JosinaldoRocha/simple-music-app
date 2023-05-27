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
  final String cipher;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: lightColors.secondary,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 200,
              child: BoxText.titleMedium(
                title,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 20),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color.fromRGBO(251, 203, 146, 1),
              ),
              child: Center(
                child: Text(
                  cipher,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: lightColors.secondary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
