import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/app_colors.dart';
import 'package:pokedex/core/theme/app_text_styles.dart';
import 'package:pokedex/modules/detail/detail_viewmodel.dart';

Widget detailData({
  required DetailViewmodel controller,
  required Size size,
}) =>
    Padding(
      padding: EdgeInsets.only(
        top: size.height * 0.45,
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.pokemon.value.name ?? '',
                    style: AppTextStyles.name,
                  ),
                  const SizedBox(height: 16),
                  ...(controller.pokemon.value.stats ?? []).map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 80,
                            child: Text(
                              e.stat?.name ?? '',
                              style: AppTextStyles.label,
                            ),
                          ),
                          Expanded(
                            child: LinearProgressIndicator(
                              value: (e.effort ?? 0) / 100,
                              color: AppColors.fire,
                              backgroundColor: AppColors.background,
                              minHeight: 6,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '${e.stat?.name}',
                            style: AppTextStyles.stat,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
