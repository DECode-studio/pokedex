import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/app_colors.dart';
import 'package:pokedex/core/theme/app_text_styles.dart';
import 'package:hugeicons/hugeicons.dart';

Widget toolBar() => Container(
      height: 100,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  HugeIcons.strokeRoundedArrowLeft02,
                  size: 30,
                ),
                Text(
                  'Pokedex',
                  style: AppTextStyles.name.copyWith(
                    fontSize: 24,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            HugeIcons.strokeRoundedMenu11,
          ),
        ],
      ),
    );
