import 'package:get_it/get_it.dart';
import 'package:machine_test/demo/data/data_sources/restaurant_data_source.dart';
import 'package:machine_test/demo/data/repositories/restaurant_repo.dart';
import 'package:machine_test/demo/domain/repositories/restaurant_repo_impl.dart';
import 'package:machine_test/demo/domain/use_cases/get_restaurant_use_case.dart';

final getIt = GetIt.instance;

void setup() {
  //data source
  getIt.registerLazySingleton<RestaurantDataSource>(
      () => RestaurantDataSourceImpl());

  //data repository
  getIt.registerLazySingleton<RestaurantRepository>(
      () => RestaurantRepositoryImpl(getIt()));

  //use case
  getIt.registerLazySingleton<RestaurantUseCase>(
      () => RestaurantUseCase(getIt()));
}
