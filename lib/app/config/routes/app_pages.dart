library app_pages.dart;

import 'package:z_file_manager/app/features/dashboard/home/views/screens/home_screen.dart';
import 'package:z_file_manager/app/features/dashboard/index/views/screens/dashboard_screen.dart';

import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.dashboard;

  static final routes = [
    GetPage(name: _Paths.dashboard, page: () => DashboardScreen(), bindings: [
      DashboadBinding(),
      HomeBinding(),
    ])
  ];
}
