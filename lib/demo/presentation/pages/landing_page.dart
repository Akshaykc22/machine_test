import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/demo/presentation/manager/controller/landing_page_controller.dart';
import 'package:machine_test/demo/presentation/pages/tab1_page.dart';
import 'package:machine_test/demo/presentation/res/app_colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  final lanController = Get.find<LandingPageController>();

  @override
  void initState() {
    lanController.initTabController(this);
    super.initState();
  }

  @override
  void dispose() {
    // lanController.tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TabBar(
          controller: lanController.tabController,
          labelColor: AppColors.black,
          tabs: const [
            Tab(
              text: 'tab1',
            ),
            Tab(
              text: 'tab2',
            ),
          ]),
      body: TabBarView(
        controller: lanController.tabController,
        children: [
          const Tab1Page(),
          Center(
            child: Obx(() => Text(lanController.selectedPhone.value == null
                ? 'Calling phone ... '
                : lanController.selectedPhone.value ?? "")),
          ),
        ],
      ),
    );
  }
}
