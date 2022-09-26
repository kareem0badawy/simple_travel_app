import 'package:flutter/material.dart';

import '../screens/categories_trips_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  CategoryItem(this.id, this.title, this.imageUrl);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoriesTripsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 250,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ],
      ),
    );
  }
}
