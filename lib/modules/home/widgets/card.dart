import 'package:flutter/material.dart';
import 'package:pokedex/core/constant/api.dart';
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
                color: AppColors.water,
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
                Positioned(
                  right: 12,
                  top: 12,
                  child: Text(
                    '#${data?.id.toString().padLeft(3, '0')}',
                    style: AppTextStyles.label.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(image, height: 70),
                      const SizedBox(height: 10),
                      Text(
                        indexData.name ?? '',
                        style: AppTextStyles.title.copyWith(fontSize: 18),
                      ),
                      const SizedBox(height: 6),
                      Wrap(
                        spacing: 6,
                        children: (data?.types ?? [])
                            .map((t) => Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
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
