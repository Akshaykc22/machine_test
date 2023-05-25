import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:machine_test/demo/presentation/res/app_assets.dart';

import '../models/restaurant_model.dart';

abstract class RestaurantDataSource {
  Future<RestaurantListModel> getRestaurants();
}

class RestaurantDataSourceImpl extends RestaurantDataSource {
  @override
  Future<RestaurantListModel> getRestaurants() async {
    final data = await rootBundle.loadString(AppAssets.restaurants);
    return RestaurantListModel.fromJson(jsonDecode(data));
  }
}
