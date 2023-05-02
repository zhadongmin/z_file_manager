import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:z_file_manager/app/constans/app_constant.dart';
import 'package:z_file_manager/app/share_components/file_type_icon.dart';

import '../utils/helpers/app_helpers.dart';

import 'package:flutter_svg/flutter_svg.dart';

class CardFolder extends StatelessWidget {
  const CardFolder(
      {this.width,
      required this.label,
      required this.totalItem,
      required this.fileType,
      super.key});

  final double? width;
  final String label;
  final int totalItem;
  final List<FileType> fileType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: width ?? 200,
      padding: const EdgeInsets.all(KDefaultSpacing),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            ImageVector.folder,
            height: 30,
          ),
          ListTile(
            title: Text(
              label.capitalizeFirst!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              '$totalItem Items',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            contentPadding: const EdgeInsets.all(0),
          ),
          _typeIcons(fileType),
        ],
      ),
    );
  }

  Widget _typeIcons(List<FileType> fileType) {
    int maxIcon = 3;
    List<Widget> children = [];
    Widget moreIcon = Icon(Icons.more_horiz_outlined);

    for (int i = 0; i < fileType.length; i++) {
      if (i <= maxIcon) {
        if (i < maxIcon) {
          children.add(FileTypeIcon(
            fileType[i],
            size: 24,
          ));
        } else {
          children.add(moreIcon);
        }
      } else {
        break;
      }
    }
    return Row(
        children: children
            .map(
              (e) => Padding(
                padding: EdgeInsets.all(2),
                child: e,
              ),
            )
            .toList());
  }
}
