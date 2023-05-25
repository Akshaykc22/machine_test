import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/demo/presentation/manager/controller/landing_page_controller.dart';

class PhoneCallPage extends StatelessWidget {
  const PhoneCallPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LandingPageController>();
    String? phone = Get.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text("Phone Number : $phone"),
            const Spacer(),
            ElevatedButton(
                onPressed: () => controller.call(phone ?? ""),
                child: const Text("Call")),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
