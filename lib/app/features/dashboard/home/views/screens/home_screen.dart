library home;

import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

//share_coponent
import 'package:z_file_manager/app/share_components/custom_button.dart';
import 'package:z_file_manager/app/share_components/file_list_button.dart';
import 'package:z_file_manager/app/share_components/search_button.dart';
import 'package:z_file_manager/app/share_components/header_text.dart';

// constans
import 'package:z_file_manager/app/constans/app_constant.dart';

import '../../../../../utils/helpers/app_helpers.dart';

//controller
part '../../controllers/home.controller.dart';

//binding
part '../../bindings/home.binding.dart';

// model
part '../../models/user.dart';
part '../../models/file_usage.dart';

//components
part '../components/header.dart';
part '../components/storage_chart.dart';
part '../components/category.dart';
part '../components/recent.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(KDefaultSpacing),
                    child: _Header(user: controller.user),
                  ),
                  Padding(
                    padding: EdgeInsets.all(KDefaultSpacing),
                    child: _StorageChart(
                      usage: controller.usage,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(KDefaultSpacing),
                    child: _Category(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(KDefaultSpacing),
                    child: _Recent(
                      data: controller.recent,
                    ),
                  )
                ],
              ),
              hasScrollBody: false,
            )
          ],
        ),
      ),
    );
  }
}
