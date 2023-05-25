import 'package:machine_test/demo/data/repositories/restaurant_repo.dart';

import '../../data/models/restaurant_model.dart';

class RestaurantUseCase {
  final RestaurantRepository repository;

  RestaurantUseCase(this.repository);

  Future<RestaurantListModel> call() {
    return repository.getRestaurants();
  }
}
