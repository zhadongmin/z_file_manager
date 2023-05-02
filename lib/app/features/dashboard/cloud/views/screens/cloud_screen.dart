library cloud;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:z_file_manager/app/constans/app_constant.dart';
import 'package:z_file_manager/app/share_components/card_folder.dart';

import '../../../../../share_components/card_cloud.dart';
import '../../../../../share_components/search_button.dart';
import '../../../../../utils/helpers/app_helpers.dart';

// components
part '../components/header.dart';
part '../components/card_service.dart';
part '../components/card_data.dart';

// models
part '../../mdoels/folder_data.dart';

//controller
part '../../controllers/cloud_controller.dart';

// binding
part '../../bindings/cloud_binding.dart';

class CloudScreen extends GetView<CloudController> {
  const CloudScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(KDefaultSpacing),
                  child: _Header(),
                ),
                _CardService(),
                SizedBox(
                  height: KDefaultSpacing,
                ),
                Padding(
                  padding: const EdgeInsets.all(KDefaultSpacing),
                  child: Text(
                    "Folder",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ]),
            ),
            _CardData(
              folderData: controller.folderData,
            ),
          ],
        ),
      ),
    );
  }
}
