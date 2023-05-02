part of dashboard;

class DashboardContoller extends GetxController {
  final page = PageController();

  final currentIndex = 0.obs;

  void onChangedPage(int index) {
    currentIndex.value = index;
  }

  void changePage(int index) {
    page.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}
