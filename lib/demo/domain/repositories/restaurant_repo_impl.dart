import 'package:machine_test/demo/data/data_sources/restaurant_data_source.dart';
import 'package:machine_test/demo/data/models/restaurant_model.dart';
import 'package:machine_test/demo/data/repositories/restaurant_repo.dart';

class RestaurantRepositoryImpl extends RestaurantRepository {
  final RestaurantDataSource restaurantDataSource;

  RestaurantRepositoryImpl(this.restaurantDataSource);

  @override
  Future<RestaurantListModel> getRestaurants() {
    return restaurantDataSource.getRestaurants();
  }
}
