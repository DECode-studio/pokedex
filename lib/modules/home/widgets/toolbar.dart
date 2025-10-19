import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/app_colors.dart';
import 'package:pokedex/core/theme/app_text_styles.dart';

AppBar toolBar() => AppBar(
      elevation: 0,
      backgroundColor: AppColors.background,
      title: Text(
        'Pokedex',
        style: AppTextStyles.name.copyWith(
          fontSize: 24,
          color: AppColors.textPrimary,
        ),
      ),
    );
