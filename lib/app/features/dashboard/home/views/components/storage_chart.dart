part of home;

class _StorageChart extends StatelessWidget {
  const _StorageChart({required this.usage, this.radius = 200, super.key});

  final double radius;
  final _FileUsage usage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
            radius: radius,
            percent: _getUsedPercent() / 100,
            lineWidth: 25,
            animation: true,
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: Colors.grey[300]!,
            progressColor: Theme.of(context).primaryColor,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _percentText(),
                _subtitleText('used'),
              ],
            )),
        SizedBox(
          height: KDefaultSpacing,
        ),
        Row(
          children: [
            Spacer(),
            Flexible(
              child: _indicatorUsage(
                color: Colors.grey[300]!,
                title: filesize(usage.totalFree, 0),
                subtitle: 'free',
              ),
            ),
            Flexible(
              child: _indicatorUsage(
                color: Theme.of(context).primaryColor,
                title: filesize(usage.totalUsed, 0),
                subtitle: 'used',
              ),
            ),
            Spacer(),
          ],
        )
      ],
    );
  }

  double _getUsedPercent() {
    int _maxStorage = usage.totalFree + usage.totalUsed;

    return (usage.totalUsed / _maxStorage) * 100;
  }

  Widget _indicatorUsage({
    required Color color,
    required String title,
    required String subtitle,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 8,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              style: Theme.of(Get.context!).textTheme.bodySmall,
            )
          ],
        )
      ],
    );
  }

  Widget _percentText() {
    return Text(
      '${_getUsedPercent().toInt()}%',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Theme.of(Get.context!).primaryColor,
      ),
    );
  }

  Widget _subtitleText(String text) {
    return Text(
      text,
      style: Theme.of(Get.context!).textTheme.bodySmall?.copyWith(fontSize: 14),
    );
  }
}
