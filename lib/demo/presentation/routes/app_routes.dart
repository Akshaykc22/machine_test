import 'package:get/get.dart';
import 'package:machine_test/demo/presentation/manager/bindings/landingpage_binding.dart';
import 'package:machine_test/demo/presentation/pages/detail_view_page.dart';
import 'package:machine_test/demo/presentation/pages/landing_page.dart';
import 'package:machine_test/demo/presentation/pages/phone_call_page.dart';
import 'package:machine_test/demo/presentation/routes/app_pages.dart';

class AppRoutes {
  static List<GetPage> appRoutes = [
    GetPage(
        name: AppPages.landingPage,
        page: () => const LandingPage(),
        binding: LandingPageBinding()),
    GetPage(
      name: AppPages.detailView,
      page: () => const DetailViewPage(),
    ),
    GetPage(
        name: AppPages.phone,
        page: () => const PhoneCallPage(),
        binding: LandingPageBinding()),
  ];

  navigateToPhoneCall(String phoneNumber) {}
}
