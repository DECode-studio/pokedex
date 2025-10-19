class Api {
  static const BASE_URL = 'https://pokeapi.co';
  static const V2_API_URL = '/api/v2';

  static const POKEMON_URL = '/pokemon';
  static String POKEMON_IMAGE_URL(
    String id,
  ) => 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${id}.png';
}
