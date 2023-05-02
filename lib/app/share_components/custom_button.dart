import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:z_file_manager/app/constans/app_constant.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton(
      {required this.icon,
      required this.label,
      required this.onPressed,
      this.color = Colors.blue,
      this.borderRadius,
      super.key});

  final IconData icon;
  final Color color;
  final String label;
  final Function()? onPressed;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final _borderRadius = borderRadius ?? BorderRadius.circular(10);
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: onPressed,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: color.withOpacity(.25),
                borderRadius: _borderRadius,
              ),
              padding: EdgeInsets.all(15),
              child: Icon(
                icon,
                color: color,
                size: 30,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 70,
            child: Text(
              label.capitalizeFirst!,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
