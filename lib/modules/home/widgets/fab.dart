import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:pokedex/core/theme/app_colors.dart';

Widget fab() => FloatingActionButton(
      onPressed: () {},
      shape: CircleBorder(),
      backgroundColor: AppColors.purple,
      child: Icon(
        HugeIcons.strokeRoundedSlidersHorizontal,
        color: AppColors.white,
      ),
    );
