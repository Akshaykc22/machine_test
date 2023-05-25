import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:machine_test/demo/data/models/restaurant_model.dart';
import 'package:machine_test/demo/presentation/routes/app_pages.dart';

import '../utils.dart';

class DetailViewPage extends StatelessWidget {
  const DetailViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RestaurantModel? restaurantModel;
    restaurantModel = Get.arguments as RestaurantModel?;
    bool isOpen = false;
    if (restaurantModel != null) {
      isOpen = isTimeInRange(
          DateTime.now(),
          convertTimeStringToTimeOfDay(restaurantModel.hours.open),
          convertTimeStringToTimeOfDay(restaurantModel.hours.close));
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurantModel?.name ?? "",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("${restaurantModel?.cuisine} - " ?? ""),
                  RatingBar.builder(
                    initialRating: restaurantModel?.rating ?? 0,
                    minRating: 1,
                    itemSize: 20,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (double value) {},
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(restaurantModel?.location.address ?? ""),
              const SizedBox(
                height: 10,
              ),
              Text("Website : ${restaurantModel?.website ?? ""}"),
              const SizedBox(
                height: 10,
              ),
              Text("Time  - ${isOpen ? "Open" : "close"}"),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppPages.phone,
                          arguments: restaurantModel?.phoneNumber);
                    },
                    child: const Text("Contact Info")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
