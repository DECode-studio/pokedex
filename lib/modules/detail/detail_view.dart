import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pokedex/core/theme/app_colors.dart';
import 'package:pokedex/modules/detail/detail_viewmodel.dart';

import 'widgets/screen.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ScreenUtil.init(context);

    return GetX<DetailViewmodel>(
      init: DetailViewmodel(),
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.getBgColor(
          controller.pokemon.value.types?.first.type?.name ?? '',
        ),
        body: SafeArea(
          child: screenPage(
            controller: controller,
            size: size,
          ),
        ),
      ),
    );
  }
}
