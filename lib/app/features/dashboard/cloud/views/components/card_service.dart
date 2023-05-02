part of cloud;

class _CardService extends StatelessWidget {
  const _CardService({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Padding(
          padding: const EdgeInsets.all(KDefaultSpacing),
          child: CardCloud(
            title: "work and private document",
            serviceName: 'free',
            totalStorage: '1 gb',
            imageAssets: ImageRaster.megaphone,
            color: Colors.orange,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(KDefaultSpacing),
          child: CardCloud(
            title: "save your happy moment",
            serviceName: 'standard',
            totalStorage: '10 gb',
            imageAssets: ImageRaster.rocket,
            color: Colors.blue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(KDefaultSpacing),
          child: CardCloud(
            title: "wbecome the best content creator",
            serviceName: 'enterprise',
            totalStorage: '50 gb',
            imageAssets: ImageRaster.boxCoins,
            color: Colors.red,
          ),
        ),
      ],
      options: CarouselOptions(
        height: CardCloud.height,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(seconds: 2),
        autoPlayInterval: Duration(seconds: 5),
        viewportFraction: 1,
      ),
    );
  }
}
