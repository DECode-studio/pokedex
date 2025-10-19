import 'package:get/get.dart';
import 'package:pokedex/core/constant/api.dart';
import 'package:pokedex/core/utils/interface.dart';
import 'package:pokedex/core/utils/navigattion.dart';
import 'package:pokedex/data/models/pokemon_model.dart';
import 'package:pokedex/data/services/pokemon_service.dart';

class DetailViewmodel extends GetxController {
  final pokemonService = PokemonService();
  final param = Get.parameters;

  var name = ''.obs;
  var image = ''.obs;

  var pokemon = PokemonModel().obs;
  var isLiked = false.obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fullScreenInterface();
    loadData();
  }

  void loadData() async {
    isLoading.value = true;
    if (param['name'] == null) {
      Navigate.back();
    }

    name.value = param['name'] ?? '';
    pokemon.value = await pokemonService.getPokemon(
      name: name.value,
    );

    image.value = Api.POKEMON_IMAGE_URL('${pokemon.value.id}');
    isLoading.value = false;
  }

  void actionMethod({
    required String mode,
    dynamic data,
  }) {
    if (mode == 'like') {
      isLiked.value = !isLiked.value;
    }
  }
}
