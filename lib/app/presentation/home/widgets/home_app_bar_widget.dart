import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        15,
        47,
        10,
        15,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 33,
            child: Icon(
              Icons.person,
              size: 45,
            ),
          ),
          const SizedBox(width: 10),
          BoxText.titleMedium('Olá, usuário!'),
          const Expanded(child: SizedBox()),
          IconButton(
            iconSize: 50,
            onPressed: () {},
            icon: const Icon(Icons.menu_rounded),
          ),
        ],
      ),
    );
  }
}
