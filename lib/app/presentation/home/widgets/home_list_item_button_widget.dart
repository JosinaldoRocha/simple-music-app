import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/home/widgets/home_item_button_widget.dart';

class HomeListItemButtonWidget extends StatelessWidget {
  const HomeListItemButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        HomeItemButtonWidget(
          title: 'Caderno de cifras',
          image: 'assets/images/journal.png',
          onTap: () {},
        ),
        const Space.x4(),
        HomeItemButtonWidget(
          title: 'Dicionário de acordes',
          image: 'assets/images/dictionary.jpg',
          onTap: () {
            Navigator.pushNamed(context, '/select-chord-type');
          },
        ),
        const Space.x4(),
        HomeItemButtonWidget(
          title: 'Vídeo aulas',
          image: 'assets/images/youtube.png',
          onTap: () {},
        ),
        const Space.x4(),
      ],
    );
  }
}
