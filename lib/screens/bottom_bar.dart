import 'package:flutter/material.dart';
import 'package:nyam_nyam/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 2;
  final date = DateTime.now();
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text("Поиск"),
    const Text("Корзина"),
    const Text("Аккаунт"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/home.png")),
                label: "Главная"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  "assets/search-normal.png",
                )),
                label: "Поиск"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/bag.png")),
                label: "Корзина"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/profile-circle.png")),
                label: "Аккаунт"),
          ]),
    );
  }
}
