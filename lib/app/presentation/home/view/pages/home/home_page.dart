import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/home/widgets/home_body_widget.dart';
import 'package:simple_music_app/app/presentation/home/widgets/home_list_item_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final _items = [
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

final _widgets = [
  const HomeListItemButtonWidget(),
  const Center(child: Text('Em desenvolvimento')),
  const Center(child: Text('Em desenvolvimento')),
];

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColors.primary,
      body: HomeBodyWidget(
        widget: IndexedStack(
          index: _selectedIndex,
          children: _widgets,
        ),
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
