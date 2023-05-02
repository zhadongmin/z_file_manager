part of dashboard;

class DashboadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardContoller());
  }
}
