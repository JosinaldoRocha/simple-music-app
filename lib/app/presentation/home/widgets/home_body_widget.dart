import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarWidget(
          title: 'Olá, Usuário!',
          isHome: true,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(
              top: 44,
              left: 20,
              right: 20,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/fundo.png',
                  package: 'design_system',
                ),
              ),
            ),
            child: widget,
          ),
        ),
      ],
    );
  }
}
