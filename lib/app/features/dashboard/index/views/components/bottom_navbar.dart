part of dashboard;

class _BottomNavbar extends StatelessWidget {
  const _BottomNavbar(
      {required this.onSelected, required this.currentIndex, super.key});

  final Function(int index) onSelected;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) {
        onSelected(value);
      },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          activeIcon: Icon(
            Icons.home_filled,
          ),
          label: 'home',
          tooltip: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.cloud_circle_outlined,
          ),
          activeIcon: Icon(
            Icons.cloud_circle_rounded,
          ),
          label: 'home',
          tooltip: 'home',
        ),
      ],
    );
  }
}
