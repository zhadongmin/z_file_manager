part of cloud;

class _CardData extends StatelessWidget {
  const _CardData({required this.folderData, super.key});

  final List<_FolderData> folderData;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: folderData
          .map(
            (e) => Padding(
              padding: const EdgeInsets.all(10.0),
              child: CardFolder(
                // width: 200,
                label: e.label,
                totalItem: e.totalItem,
                fileType: e.fileType,
              ),
            ),
          )
          .toList(),
    );
  }
}
