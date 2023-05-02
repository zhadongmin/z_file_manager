library dashboard;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:z_file_manager/app/features/dashboard/cloud/views/screens/cloud_screen.dart';
import 'package:z_file_manager/app/features/dashboard/home/views/screens/home_screen.dart';

//controllers
part '../../controllers/dashboard_controller.dart';

// components
part '../components/bottom_navbar.dart';

// binding
part '../../binding/dashboard_binding.dart';

class DashboardScreen extends GetView<DashboardContoller> {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.page,
        onPageChanged: (index) => controller.onChangedPage(index),
        children: [
          HomeScreen(),
          CloudScreen(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => _BottomNavbar(
          currentIndex: controller.currentIndex.value,
          onSelected: (index) {
            controller.changePage(index);
          },
        ),
      ),
    );
  }
}
