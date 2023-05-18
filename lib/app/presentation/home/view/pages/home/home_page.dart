import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/home/widgets/home_body_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<BottomNavigationBarItem> teste = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
  const BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Mais...'),
];

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColors.primary,
      body: Column(
        children: [
          const AppBarWidget(
            title: 'Olá, Usuário!',
            isHome: true,
          ),
          const HomeBodyWidget(),
          SizedBox(
            height: 70,
            child: BottomNavigationBar(
              items: teste,
              selectedItemColor: const Color.fromARGB(255, 80, 79, 79),
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
