import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/app_text_styles.dart';
import 'package:pokedex/modules/detail/detail_viewmodel.dart';

Widget toolBar({
  required DetailViewmodel controller,
  required Size size,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BackButton(color: Colors.white),
          Text(
            '#${(controller.pokemon.value.id ?? '').toString().padLeft(3, '0')}',
            style: AppTextStyles.title,
          ),
        ],
      ),
    );
