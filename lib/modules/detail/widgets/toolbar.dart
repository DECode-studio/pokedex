import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:pokedex/core/theme/app_colors.dart';
import 'package:pokedex/core/utils/navigattion.dart';
import 'package:pokedex/modules/detail/detail_viewmodel.dart';

Widget toolBar({
  required DetailViewmodel controller,
  required Size size,
}) =>
    Container(
      height: 80,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: Navigate.back,
              child: Icon(
                HugeIcons.strokeRoundedArrowLeft02,
                color: AppColors.white,
                size: 30,
              ),
            ),
            InkWell(
              onTap: () => controller.actionMethod(mode: 'like'),
              child: Icon(
                controller.isLiked.value
                    ? CupertinoIcons.heart_fill
                    : CupertinoIcons.heart,
                color: AppColors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
