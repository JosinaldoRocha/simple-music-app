import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppBarHomeWidget extends StatelessWidget {
  const AppBarHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightColors.background,
      padding: const EdgeInsets.fromLTRB(
        20,
        45,
        10,
        10,
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: lightColors.secondary,
            radius: 35,
            child: const Icon(
              Icons.person,
              size: 50,
            ),
          ),
          const SizedBox(width: 10),
          BoxText.titleMedium('Olá, usuário!'),
        ],
      ),
    );
  }
}
