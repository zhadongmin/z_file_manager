import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:z_file_manager/app/constans/app_constant.dart';

class CardCloud extends StatelessWidget {
  const CardCloud(
      {required this.title,
      required this.serviceName,
      required this.totalStorage,
      required this.imageAssets,
      required this.color,
      super.key});

  final String title;
  final String serviceName;
  final String totalStorage;
  final String imageAssets;
  final Color color;

  static final height = 280.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.all(KDefaultSpacing),
      // color: color,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: color,
        gradient: LinearGradient(
          colors: [
            color,
            color.withOpacity(.5),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(.5),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: _title(title),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _subtitle(serviceName, totalStorage),
              Image.asset(
                imageAssets,
                fit: BoxFit.contain,
                height: 100,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _title(String text) {
    return Text(
      text.capitalizeFirst!,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _subtitle(String serviceName, String storage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          serviceName,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: Text(
            storage,
            style: TextStyle(
              fontSize: 18,
              color: color,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
