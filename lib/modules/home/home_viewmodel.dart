import 'package:get/get.dart';
import 'package:pokedex/core/utils/log.dart';
import 'package:pokedex/core/widgets/floating_loading.dart';
import 'package:pokedex/data/models/list_pokemon_model.dart';
import 'package:pokedex/data/services/pokemon_service.dart';
import 'package:pokedex/routes/app_pages.dart';

class HomeViewModel extends GetxController {
  final pokemonService = PokemonService();

  var pokemon = ListPokemonModel().obs;
  var isLoading = false.obs;
  var isLoadingMore = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    isLoading.value = true;
    pokemon.value = await pokemonService.getListPokemon();
    isLoading.value = false;
  }

  Future<void> actionData({
    required String actionUrl,
  }) async {
    FloatingLoading.show();
    pokemon.value = await pokemonService.getListPokemon(
      actionUrl: actionUrl,
    );

    isLoading.value = true;
    isLoading.value = false;
    FloatingLoading.hide();
  }

  Future<void> loadMore() async {
    final nextUrl = pokemon.value.next;
    if (nextUrl == null || nextUrl.isEmpty || isLoadingMore.value) return;

    try {
      isLoadingMore.value = true;
      final nextPage = await pokemonService.getListPokemon(
        actionUrl: nextUrl,
      );

      final oldList = pokemon.value.results ?? [];
      final newList = nextPage.results ?? [];

      pokemon.value = ListPokemonModel(
        count: nextPage.count,
        next: nextPage.next,
        previous: nextPage.previous,
        results: [...oldList, ...newList],
      );
    } catch (e) {
      printLog("Error loading more: $e");
    } finally {
      isLoadingMore.value = false;
    }
  }

  void openDetail({
    required String name,
  }) {
    Get.toNamed(AppRoutes.detail, parameters: {
      'name': name,
    });
  }
}
