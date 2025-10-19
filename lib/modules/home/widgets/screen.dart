import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/app_colors.dart';
import 'package:pokedex/modules/home/home_viewmodel.dart';

import 'card.dart';

Widget screenPage({
  required HomeViewModel controller,
  required Size size,
}) =>
    controller.isLoading.value
        ? CircularProgressIndicator(
            strokeWidth: 4,
            color: AppColors.water,
          )
        : Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(16),
                itemCount: (controller.pokemon.value.results ?? []).length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1.05,
                ),
                itemBuilder: (_, index) => cardData(
                  controller: controller,
                  indexData: (controller.pokemon.value.results ?? [])[index],
                  size: size,
                ),
              )
            ],
          );
