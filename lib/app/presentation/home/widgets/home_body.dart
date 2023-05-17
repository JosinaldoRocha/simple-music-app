import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/home/widgets/home_red_card_widget.dart';
import 'package:simple_music_app/app/presentation/home/widgets/home_yellow_card_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            HomeYellowCardWidget(
              title: 'Caderno\nde cifras',
              image: 'assets/images/journal.png',
              onTap: () {},
            ),
            const Space.x5(),
            HomeRedCardWidget(
              title: 'Dicionário\nde acordes',
              image: 'assets/images/dictionary.jpg',
              onTap: () {},
            ),
            const Space.x5(),
            HomeYellowCardWidget(
              title: '  Vídeo  \n  aulas  ',
              image: 'assets/images/capa.png',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
