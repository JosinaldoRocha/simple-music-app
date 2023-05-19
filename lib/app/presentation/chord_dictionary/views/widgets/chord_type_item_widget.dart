import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ChordTypeItemWidget extends StatelessWidget {
  const ChordTypeItemWidget({
    Key? key,
    required this.title,
    this.cipher = '',
    required this.onTap,
  }) : super(key: key);
  final String title;
  final String? cipher;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 0,
        padding: EdgeInsets.zero,
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
            //TODO
            // o filho será o a letra 'A' com o parâmetro 'cifra' do chord model
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
