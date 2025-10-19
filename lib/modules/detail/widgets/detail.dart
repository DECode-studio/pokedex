import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/core/theme/app_colors.dart';
import 'package:pokedex/core/theme/app_text_styles.dart';
import 'package:pokedex/core/widgets/tab.dart';
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
                  tabBar(
                    currentIndex: controller.selectedTab.value,
                    tabs: const ['About', 'Base Stats', 'Moves'],
                    onTap: (index) => controller.actionMethod(
                      mode: 'tab-index',
                      data: index,
                    ),
                    margin: const EdgeInsets.all(0),
                    activeColor: AppColors.textPrimary,
                    inactiveColor: AppColors.textSecondary,
                    indicatorColor: AppColors.purple,
                  ),
                  const SizedBox(height: 10),
                  IndexedStack(
                    index: controller.selectedTab.value,
                    children: [
                      _detailAbout(controller: controller, size: size),
                      _detailStatus(controller: controller, size: size),
                      _detailMoves(controller: controller, size: size),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );

Widget _detailData({
  required String title,
  required String value,
  double? titleWidth,
  CrossAxisAlignment? crossAxisAlignment,
}) =>
    Row(
      spacing: 10,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: titleWidth ?? 80,
          child: Text(
            title,
            style: AppTextStyles.label,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: AppTextStyles.stat,
          ),
        ),
      ],
    );

Widget _detailAbout({
  required DetailViewmodel controller,
  required Size size,
}) =>
    Column(
      spacing: 10,
      children: [
        _detailData(
          title: 'Name',
          value: controller.name.value.camelCase ?? '',
        ),
        _detailData(
          title: 'Height',
          value: '${(controller.pokemon.value.height ?? 0) * 10} cm',
        ),
        _detailData(
          title: 'Weight',
          value: '${(controller.pokemon.value.weight ?? 0) / 10} Kg',
        ),
        _detailData(
          title: 'Base Experience',
          value: '${(controller.pokemon.value.baseExperience ?? 0) / 10} EXP',
        ),
        _detailData(
          title: 'Type',
          value: (controller.pokemon.value.types ?? [])
              .map((e) =>
                  (e.type?.name ?? '').replaceAll("-", " ").capitalize ?? '')
              .join(', '),
        ),
        _detailData(
          title: 'Abilities',
          value: (controller.pokemon.value.abilities ?? [])
              .map((e) =>
                  (e.ability?.name ?? '').replaceAll("-", " ").capitalize ?? '')
              .join(', '),
        ),
      ],
    );

Widget _detailStatus({
  required DetailViewmodel controller,
  required Size size,
}) =>
    Column(
      children: [
        ...(controller.pokemon.value.stats ?? []).map(
          (e) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Text(
                    (e.stat?.name ?? '').replaceAll("-", " ").capitalize ?? '',
                    style: AppTextStyles.label,
                  ),
                ),
                SizedBox(
                  width: 30,
                  child: Text(
                    '${e.baseStat}',
                    style: AppTextStyles.stat,
                  ),
                ),
                Expanded(
                  child: LinearProgressIndicator(
                    value: (e.baseStat ?? 0) / 100,
                    color: AppColors.getBgColor(
                      controller.pokemon.value.types?.first.type?.name ?? '',
                    ),
                    backgroundColor: AppColors.background,
                    minHeight: 6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

Widget _detailMoves({
  required DetailViewmodel controller,
  required Size size,
}) =>
    SizedBox(
      height: size.height * 0.41,
      child: Expanded(
        child: ListView(
          children: [
            ...(controller.pokemon.value.moves ?? []).map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: _detailData(
                  titleWidth: 150,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  title: (e.move?.name ?? '').replaceAll("-", " ").capitalize ??
                      '',
                  value: (e.versionGroupDetails ?? [])
                      .map((e) =>
                          ' - ${(e.moveLearnMethod?.name ?? '').replaceAll("-", " ").capitalize ?? ''}')
                      .toSet()
                      .join('\n'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
