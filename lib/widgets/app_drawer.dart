// import
import 'package:flutter/material.dart';

import '../screens/filters_screen.dart';

class AppDrawer extends StatelessWidget {
  ListTile buildListTile(String title, IconData icon, Function onTapLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Colors.blue,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'ElMessiri',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () => onTapLink(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 100,
          width: double.infinity,
          padding: EdgeInsets.only(top: 40),
          alignment: Alignment.center,
          color: Theme.of(context).accentColor,
          child: Text(
            'دليلك السياحي',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(height: 20),
        buildListTile(
          'الرحلات',
          Icons.card_travel,
          () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        buildListTile(
          'التصفيه',
          Icons.filter_list,
          () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          },
        ),
      ]),
    );
  }
}
