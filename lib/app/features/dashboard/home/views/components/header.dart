part of home;

class _Header extends StatelessWidget {
  const _Header({required this.user, super.key});

  final _User user;
  final _maxWidthForUserName = 200.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _title(),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  _subtitle(),
                  SizedBox(
                    width: 10,
                  ),
                  _emoji(),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: KDefaultSpacing,
        ),
        SearchButton(
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _title() {
    return Text(
      'Good Morning',
      style: TextStyle(fontSize: 20),
    );
  }

  Widget _subtitle() {
    return Container(
      constraints: BoxConstraints(maxWidth: _maxWidthForUserName),
      child: Text(
        user.name.capitalizeFirst!,
        style: TextStyle(
          fontSize: 20,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _emoji() {
    return SizedBox(width: 20, child: Image.asset(ImageRaster.wavingHandEmoji));
  }
}
