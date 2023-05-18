import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/home/widgets/home_red_card_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        HomeRedCardWidget(
          title: 'Caderno de cifras',
          image: 'assets/images/journal.png',
          onTap: () {},
        ),
        const Space.x4(),
        HomeRedCardWidget(
          title: 'Dicionário de acordes',
          image: 'assets/images/dictionary.jpg',
          onTap: () {},
        ),
        const Space.x4(),
        HomeRedCardWidget(
          title: 'Vídeo aulas',
          image: 'assets/images/youtube.png',
          onTap: () {},
        ),
        const Space.x4(),
      ],
    );
  }
}
