import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ChordSubtypeItemWidget extends StatelessWidget {
  const ChordSubtypeItemWidget({
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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 0,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
      onPressed: onTap,
      child: Container(
        height: 165,
        width: 165,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: lightColors.secondary,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromRGBO(251, 203, 146, 1),
                ),
                child: Center(
                  child: Text(
                    cipher,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: lightColors.secondary,
                    ),
                  ),
                ),
              ),
              const Space.x4(),
              BoxText.titleMedium(
                title,
                color: Colors.white,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
