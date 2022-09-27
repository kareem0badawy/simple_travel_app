import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '/screens/categories_screen.dart';
import '/screens/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  final List<Map<String, Object>> _screens = [
    {
      'Title': 'تصنيفات الرحلات',
      'Screen': CategoriesScreen(),
    },
    {
      'Title': 'الرحلات المفضلة',
      'Screen': FavoritesScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['Title'] as String),
      ),
      drawer: AppDrawer(),
      body: _screens[_selectedScreenIndex]['Screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.category),
            label: 'التصنيفات',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.star),
            label: 'المفضلة',
          ),
        ],
      ),
    );
  }
}
