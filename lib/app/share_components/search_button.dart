import 'package:flutter/material.dart';

import '../constans/app_constant.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({required this.onPressed, super.key});

  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey),
      ),
      // child: Icon(CustomIcons.search),
      child: IconButton(
        iconSize: 15,
        tooltip: "Search",
        padding: EdgeInsets.all(10.0),
        icon: Icon(CustomIcons.search),
        onPressed: onPressed,
      ),
    );
  }
}
