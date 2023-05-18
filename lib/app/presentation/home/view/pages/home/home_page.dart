import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/home/widgets/home_body_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<BottomNavigationBarItem> _items = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: 'Busca',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.more_horiz),
    label: 'Mais',
  ),
];

List<Widget> _widgets = [
  const HomeBodyWidget(),
  const Center(child: Text('Em desenvolvimento')),
  const Center(child: Text('Em desenvolvimento')),
];

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
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
              child: IndexedStack(
                index: _selectedIndex,
                children: _widgets,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          items: _items,
          selectedItemColor: const Color.fromARGB(255, 37, 37, 37),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
