import 'package:get/get.dart';
import 'package:machine_test/demo/presentation/manager/controller/landing_page_controller.dart';
import 'package:machine_test/injector.dart';

class LandingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LandingPageController(getIt()),
    );
  }
}
