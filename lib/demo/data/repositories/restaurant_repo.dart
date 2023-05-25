import '../models/restaurant_model.dart';

abstract class RestaurantRepository {
  Future<RestaurantListModel> getRestaurants();
}
