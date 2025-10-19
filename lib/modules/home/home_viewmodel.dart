import 'package:get/get.dart';
import 'package:pokedex/core/widgets/floating_loading.dart';
import 'package:pokedex/data/models/list_pokemon_model.dart';
import 'package:pokedex/data/services/pokemon_service.dart';
import 'package:pokedex/routes/app_pages.dart';

class HomeViewModel extends GetxController {
  final pokemonService = PokemonService();

  var pokemon = ListPokemonModel().obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void loadData() async {
    isLoading.value = true;
    pokemon.value = await pokemonService.getListPokemon();
    isLoading.value = false;
  }

  void actionData({
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

  void openDetail({
    required String name,
  }) {
    Get.toNamed(AppRoutes.detail, parameters: {
      'name': name,
    });
  }
}
