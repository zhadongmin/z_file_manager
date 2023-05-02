import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold));
  }
}
