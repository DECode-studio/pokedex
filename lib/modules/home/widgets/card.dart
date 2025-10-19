import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/core/constant/api.dart';
import 'package:pokedex/core/constant/assets.dart';
import 'package:pokedex/core/theme/app_colors.dart';
import 'package:pokedex/core/theme/app_text_styles.dart';
import 'package:pokedex/data/models/list_pokemon_model.dart';
import 'package:pokedex/modules/home/home_viewmodel.dart';

Widget cardData({
  required HomeViewModel controller,
  required ResultModel indexData,
  required Size size,
}) =>
    GestureDetector(
      onTap: () => controller.openDetail(
        name: indexData.name ?? '',
      ),
      child: FutureBuilder(
        future: controller.pokemonService.getPokemon(
          name: indexData.name ?? '',
        ),
        builder: (_, snapshot) {
          if (!snapshot.hasData || snapshot.data == null) {
            return Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.grass,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grass.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: CircularProgressIndicator(
                strokeWidth: 4,
                color: AppColors.white,
              ),
            );
          }

          final data = snapshot.data;
          final image = Api.POKEMON_IMAGE_URL('${data?.id}');
          final color = AppColors.getBgColor(
            data?.types?.first.type?.name ?? '',
          );

          return Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.network(image, height: 80),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  right: -5,
                  child: Opacity(
                    opacity: 0.2,
                    child: Image.asset(
                      ImageAsset.poketBallIcon,
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        indexData.name?.capitalize ?? '',
                        style: AppTextStyles.title.copyWith(fontSize: 18),
                      ),
                      Column(
                        spacing: 6,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: (data?.types ?? [])
                            .map((t) => Container(
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
                                      fontSize: 12,
                                    ),
                                  ),
                                ))
                            .toList(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
