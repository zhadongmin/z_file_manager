part of home;

class _Recent extends StatelessWidget {
  const _Recent({required this.data, super.key});

  final List<FileDetail> data;

  @override
  Widget build(BuildContext context) {
    final lists = data.map(
      (e) => FileListButton(
        data: e,
        onPressed: () {},
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderText(text: 'Recent'),
        SizedBox(
          height: KDefaultSpacing,
        ),
        ...lists,
      ],
    );
  }
}
