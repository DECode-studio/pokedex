import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/app_colors.dart';
import 'package:pokedex/modules/home/home_viewmodel.dart';
import 'card.dart';

Widget gridData({
  required HomeViewModel controller,
  required Size size,
}) {
  final scrollController = ScrollController();

  scrollController.addListener(() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 200) {
      controller.loadMore();
    }
  });

  final pokemons = controller.pokemon.value.results ?? [];

  if (controller.isLoading.value) {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: 4,
        color: AppColors.water,
      ),
    );
  }

  return NotificationListener<OverscrollIndicatorNotification>(
    onNotification: (overscroll) {
      overscroll.disallowIndicator();
      return true;
    },
    child: RefreshIndicator(
      onRefresh: controller.loadData,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              itemCount: pokemons.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 16,
                childAspectRatio: 1.25,
              ),
              itemBuilder: (_, index) => cardData(
                controller: controller,
                indexData: pokemons[index],
                size: size,
              ),
            ),
            if (controller.isLoadingMore.value)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: CircularProgressIndicator(
                    color: AppColors.grass,
                    strokeWidth: 3,
                  ),
                ),
              ),
          ],
        ),
      ),
    ),
  );
}
