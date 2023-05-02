part of cloud;

class CloudBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CloudController());
  }
}
