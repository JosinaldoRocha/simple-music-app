import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 169,
      padding: const EdgeInsets.fromLTRB(
        15,
        47,
        10,
        15,
      ),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            child: Icon(
              Icons.person,
              size: 44,
              color: lightColors.onPrimary,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoxText.titleMedium(
                'Olá, usuário!',
                color: Colors.white,
              ),
              BoxText.titleSmall(
                'Nível: Iniciante',
                color: lightColors.onPrimary,
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          Image.asset(
            'assets/images/logo.png',
            package: 'design_system',
            width: 80,
          ),
        ],
      ),
    );
  }
}
