import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            backgroundColor: lightColors.secondary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BoxText.titleLarge('Caderno\nde cifras'),
              const SizedBox(width: 20),
              const CircleAvatar(
                radius: 80,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  'assets/images/journal.png',
                  package: 'design_system',
                ),
              ),
            ],
          ),
          onPressed: () {},
        ),
        const Space.x5(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            backgroundColor: lightColors.primary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 130,
                width: 130,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/dictionary.jpg',
                      package: 'design_system',
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              BoxText.titleLarge(
                'Dicionário\nde acordes',
                color: Colors.white,
              ),
            ],
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
