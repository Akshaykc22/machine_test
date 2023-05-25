import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/demo/presentation/manager/controller/landing_page_controller.dart';

import '../routes/app_pages.dart';

class Tab1Page extends StatelessWidget {
  const Tab1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LandingPageController>();
    return Obx(() => ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: controller.restaurantList.length,
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                // controller.call("");
                Get.toNamed(AppPages.detailView,
                    arguments: controller.restaurantList[index]);
              },
              title: Text(controller.restaurantList[index].name),
            )));
  }
}
