import 'package:flutter/material.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({ Key? key }) : super(key: key);

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Listar'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search'
        )
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.orangeAccent,
      onTap: _onItemTapped,
    );
  }
}