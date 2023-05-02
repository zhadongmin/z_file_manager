part of home;

class _Category extends StatelessWidget {
  _Category({super.key});

  final buttons = [
    CustomeButton(
      icon: Icons.document_scanner,
      color: Colors.green,
      label: 'docs',
      onPressed: () {},
    ),
    CustomeButton(
      icon: Icons.image,
      color: Colors.lightBlue,
      label: 'images',
      onPressed: () {},
    ),
    CustomeButton(
      icon: Icons.video_collection,
      color: Colors.pinkAccent,
      label: 'videos',
      onPressed: () {},
    ),
    CustomeButton(
      icon: Icons.music_note,
      color: Colors.orangeAccent,
      label: 'videos',
      onPressed: () {},
    ),
    CustomeButton(
      icon: CustomIcons.doc_text_inv,
      color: Colors.green,
      label: 'music',
      onPressed: () {},
    ),
  ]
      .map(
        (e) => Padding(
          padding: EdgeInsets.all(10),
          child: e,
        ),
      )
      .toList();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderText(text: 'Category'),
          SizedBox(
            height: KDefaultSpacing,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(children: buttons),
          ),
        ],
      ),
    );
  }
}
