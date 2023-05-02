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
            CustomIcons.home_outlined,
          ),
          activeIcon: Icon(
            CustomIcons.home_solid,
          ),
          label: 'home',
          tooltip: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CustomIcons.cloud_outlined,
          ),
          activeIcon: Icon(
            CustomIcons.cloud_solid,
          ),
          label: 'home',
          tooltip: 'home',
        ),
      ],
    );
  }
}
