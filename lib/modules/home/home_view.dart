import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pokedex/core/theme/app_colors.dart';
import 'package:pokedex/modules/home/home_viewmodel.dart';

import 'widgets/fab.dart';
import 'widgets/screen.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final controller = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ScreenUtil.init(context);

    return GetX<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.background,
        body: screenPage(
          controller: controller,
          size: size,
        ),
        floatingActionButton: fab(),
      ),
    );
  }
}
