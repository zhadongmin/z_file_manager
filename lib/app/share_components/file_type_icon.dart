import 'package:flutter/material.dart';
import 'package:z_file_manager/app/utils/helpers/app_helpers.dart';

import '../constans/app_constant.dart';

class FileTypeIcon extends StatelessWidget {
  const FileTypeIcon(this.type, {this.size = 50, super.key});

  final double size;
  final FileType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          gradient: __gradient(type),
          borderRadius: BorderRadius.circular(size / 5)),
      child: _icon(type),
    );
  }

  Widget _icon(FileType type) {
    switch (type) {
      case FileType.msAccess:
        return Icon(CustomIcons.ms_access);
      case FileType.msExcel:
        return Icon(CustomIcons.ms_excel);
      case FileType.msOutlook:
        return Icon(CustomIcons.ms_outlook);
      case FileType.msPowerPoint:
        return Icon(CustomIcons.ms_power_point);

      case FileType.msWord:
        return Icon(CustomIcons.ms_word);

      case FileType.other:
        return Icon(Icons.extension);
      default:
        return Icon(Icons.extension);
    }
  }

  LinearGradient __gradient(FileType type) {
    switch (type) {
      case FileType.msAccess:
        return LinearGradient(colors: [
          Colors.redAccent,
          Colors.red,
        ]);
      case FileType.msExcel:
        return LinearGradient(colors: [
          Colors.greenAccent,
          Colors.green,
        ]);
      case FileType.msOutlook:
        return LinearGradient(colors: [
          Colors.lightBlueAccent,
          Colors.lightBlue,
        ]);
      case FileType.msPowerPoint:
        return LinearGradient(colors: [
          Colors.orangeAccent,
          Colors.orange,
        ]);

      case FileType.msWord:
        return LinearGradient(colors: [
          Colors.blueAccent,
          Colors.blue,
        ]);

      case FileType.other:
        return LinearGradient(colors: [
          Colors.pinkAccent,
          Colors.pink,
        ]);
      default:
        return LinearGradient(colors: [
          Colors.deepOrangeAccent,
          Colors.deepOrange,
        ]);
    }
  }
}
