import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/core/constant/assets.dart';
import 'package:pokedex/core/theme/app_colors.dart';
import 'package:pokedex/core/theme/app_text_styles.dart';
import 'package:pokedex/modules/detail/detail_viewmodel.dart';

import 'detail.dart';
import 'toolbar.dart';

Widget screenPage({
  required DetailViewmodel controller,
  required Size size,
}) =>
    controller.isLoading.value
        ? CircularProgressIndicator(
            strokeWidth: 4,
            color: AppColors.water,
          )
        : Stack(
            children: [
              _acesories(
                controller: controller,
                size: size,
              ),
              detailData(
                controller: controller,
                size: size,
              ),
              _poketImage(
                controller: controller,
                size: size,
              ),
              _detailData(
                controller: controller,
                size: size,
              ),
              toolBar(
                controller: controller,
                size: size,
              ),
              _animationImage(
                controller: controller,
                size: size,
              ),
            ],
          );

Widget _animationImage({
  required DetailViewmodel controller,
  required Size size,
}) =>
    GestureDetector(
      onTap: () => controller.actionMethod(mode: 'tap'),
      child: Container(
        alignment: Alignment.bottomRight,
        margin: const EdgeInsets.all(30),
        child: Image.network(
          controller.isTaped.value
              ? (controller
                      .pokemon.value.sprites?.other?.showdown?.frontShiny ??
                  '')
              : (controller
                      .pokemon.value.sprites?.other?.showdown?.frontDefault ??
                  ''),
          // height: 50,
        ),
      ),
    );

Widget _poketImage({
  required DetailViewmodel controller,
  required Size size,
}) =>
    Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: size.height * 0.35),
        child: Image.network(
          controller.image.value,
          height: size.height * 0.35,
        ),
      ),
    );

Widget _acesories({
  required DetailViewmodel controller,
  required Size size,
}) =>
    Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(
        bottom: size.width * 0.6,
      ),
      child: Opacity(
        opacity: 0.2,
        child: Image.asset(
          ImageAsset.poketBallIcon,
          width: size.width * 0.6,
          height: size.width * 0.6,
          fit: BoxFit.cover,
          color: Colors.white,
        ),
      ),
    );

Widget _detailData({
  required DetailViewmodel controller,
  required Size size,
}) =>
    Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            controller.name.value.capitalize ?? '',
            style: AppTextStyles.title.copyWith(fontSize: 20),
          ),
          Column(
            spacing: 6,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: (controller.pokemon.value.types ?? [])
                .map(
                  (t) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      t.type?.name ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
