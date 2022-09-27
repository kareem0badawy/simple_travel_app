import 'package:flutter/material.dart';
import '/widgets/trip_details.dart';

import '../app_data.dart';

class CategoriesTripsScreen extends StatelessWidget {
  static const routeName = '/category-trips';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final filteredTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('رحلات ' + categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return TripDetails(
            id: filteredTrips[index].id,
            title: filteredTrips[index].title,
            imageUrl: filteredTrips[index].imageUrl,
            duration: filteredTrips[index].duration.toString(),
            tripType: filteredTrips[index].tripType,
            season: filteredTrips[index].season,
          );
        },
        itemCount: filteredTrips.length,
      ),
    );
  }
}
