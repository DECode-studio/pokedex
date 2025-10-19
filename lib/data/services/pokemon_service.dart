import 'package:pokedex/core/constant/api.dart';
import 'package:pokedex/core/utils/http_request.dart';
import 'package:pokedex/core/utils/log.dart';
import 'package:pokedex/data/models/list_pokemon_model.dart';
import 'package:pokedex/data/models/pokemon_model.dart';

class PokemonService extends HttpRequest {
  Future<ListPokemonModel> getListPokemon({
    String? actionUrl,
  }) async {
    try {
      final url = Uri.parse(
        actionUrl ?? '${Api.BASE_URL}${Api.V2_API_URL}${Api.POKEMON_URL}',
      );

      final res = await GET(url: url.toString());
      final data = ListPokemonModel.fromJson(res.body);

      return data;
    } catch (e, trace) {
      printLog(
          'error ${StackTrace.current.toString().split("\n")[0].split(" ")[1]} : $e');
      printLog(trace);

      return ListPokemonModel();
    }
  }

  Future<PokemonModel> getPokemon({
    required String name,
  }) async {
    try {
      final url = Uri.parse(
        '${Api.BASE_URL}${Api.V2_API_URL}${Api.POKEMON_URL}/$name',
      );

      final res = await GET(url: url.toString());
      final data = PokemonModel.fromJson(res.body);

      return data;
    } catch (e, trace) {
      printLog(
          'error ${StackTrace.current.toString().split("\n")[0].split(" ")[1]} : $e');
      printLog(trace);

      return PokemonModel();
    }
  }
}
