import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/demo/data/models/restaurant_model.dart';
import 'package:machine_test/demo/domain/use_cases/get_restaurant_use_case.dart';

import '../../routes/app_pages.dart';

class LandingPageController extends GetxController {
  final RestaurantUseCase getRestaurantUseCase;

  LandingPageController(this.getRestaurantUseCase);

  TabController? tabController;

  initTabController(TickerProvider vsync) {
    tabController = TabController(initialIndex: 0, length: 2, vsync: vsync);
  }

  final restaurantList = <RestaurantModel>[].obs;

  final selectedPhone = Rxn<String>();

  getRestaurants() async {
    // reading data from json to list

    try {
      final data = await getRestaurantUseCase.call();
      restaurantList.clear();
      restaurantList.addAll(data.restaurants);
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  call(String phone) {
    // Get.reset();
    Get.offNamedUntil(AppPages.landingPage, (route) => route.isFirst);
    Future.delayed(const Duration(milliseconds: 500), () {
      selectedPhone.value = phone;
      tabController!.animateTo(1);
    });
  }

  @override
  void onInit() {
    getRestaurants();
    super.onInit();
  }
}
