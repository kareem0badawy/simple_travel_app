// import
import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تصفيه الرحلات'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('تصفيه الرحلات'),
      ),
    );
  }
}
