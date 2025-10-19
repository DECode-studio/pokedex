import 'dart:convert';
import 'package:pokedex/core/utils/guard_value.dart';

import 'generation_model.dart';

class PokemonModel {
  List<AbilityEntry>? abilities;
  int? baseExperience;
  Cries? cries;
  List<Form>? forms;
  List<GameIndex>? gameIndices;
  int? height;
  List<dynamic>? heldItems;
  int? id;
  bool? isDefault;
  String? locationAreaEncounters;
  List<Move>? moves;
  String? name;
  int? order;
  List<PastAbility>? pastAbilities;
  List<dynamic>? pastTypes;
  Species? species;
  Sprites? sprites;
  List<Stat>? stats;
  List<TypeEntry>? types;
  int? weight;

  PokemonModel({
    this.abilities,
    this.baseExperience,
    this.cries,
    this.forms,
    this.gameIndices,
    this.height,
    this.heldItems,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.moves,
    this.name,
    this.order,
    this.pastAbilities,
    this.pastTypes,
    this.species,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  });

  static List<PokemonModel> fromListMap(List listData) {
    final result = listData.map((e) => PokemonModel.fromMap(e)).toList();
    return result;
  }

  static List<PokemonModel> fromListJson(String data) {
    final listData = json.decode(data) as List;
    final result = listData.map((e) => PokemonModel.fromMap(e)).toList();
    return result;
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      abilities: valueGuardian<List>(map['abilities'])
          ?.map((e) => AbilityEntry.fromMap(e))
          .toList(),
      baseExperience: valueGuardian<int>(map['base_experience']),
      cries: map['cries'] != null ? Cries.fromMap(map['cries']) : null,
      forms: valueGuardian<List>(map['forms'])
          ?.map((e) => Form.fromMap(e))
          .toList(),
      gameIndices: valueGuardian<List>(map['game_indices'])
          ?.map((e) => GameIndex.fromMap(e))
          .toList(),
      height: valueGuardian<int>(map['height']),
      heldItems: valueGuardian<List>(map['held_items']),
      id: valueGuardian<int>(map['id']),
      isDefault: valueGuardian<bool>(map['is_default']),
      locationAreaEncounters:
          valueGuardian<String>(map['location_area_encounters']),
      moves: valueGuardian<List>(map['moves'])
          ?.map((e) => Move.fromMap(e))
          .toList(),
      name: valueGuardian<String>(map['name']),
      order: valueGuardian<int>(map['order']),
      pastAbilities: valueGuardian<List>(map['past_abilities'])
          ?.map((e) => PastAbility.fromMap(e))
          .toList(),
      pastTypes: valueGuardian<List>(map['past_types']),
      species: map['species'] != null ? Species.fromMap(map['species']) : null,
      sprites: map['sprites'] != null ? Sprites.fromMap(map['sprites']) : null,
      stats: valueGuardian<List>(map['stats'])
          ?.map((e) => Stat.fromMap(e))
          .toList(),
      types: valueGuardian<List>(map['types'])
          ?.map((e) => TypeEntry.fromMap(e))
          .toList(),
      weight: valueGuardian<int>(map['weight']),
    );
  }

  Map<String, dynamic> toMap() => {
        'abilities': abilities?.map((e) => e.toMap()).toList(),
        'base_experience': baseExperience,
        'cries': cries?.toMap(),
        'forms': forms?.map((e) => e.toMap()).toList(),
        'game_indices': gameIndices?.map((e) => e.toMap()).toList(),
        'height': height,
        'held_items': heldItems,
        'id': id,
        'is_default': isDefault,
        'location_area_encounters': locationAreaEncounters,
        'moves': moves?.map((e) => e.toMap()).toList(),
        'name': name,
        'order': order,
        'past_abilities': pastAbilities?.map((e) => e.toMap()).toList(),
        'past_types': pastTypes,
        'species': species?.toMap(),
        'sprites': sprites?.toMap(),
        'stats': stats?.map((e) => e.toMap()).toList(),
        'types': types?.map((e) => e.toMap()).toList(),
        'weight': weight,
      };

  factory PokemonModel.fromJson(String source) {
    return PokemonModel.fromMap(
      Map<String, dynamic>.from(json.decode(source)),
    );
  }

  String toJson() => json.encode(toMap());
}

// Sub-models

class AbilityEntry {
  Ability? ability;
  bool? isHidden;
  int? slot;

  AbilityEntry({this.ability, this.isHidden, this.slot});

  factory AbilityEntry.fromMap(Map<String, dynamic> map) {
    return AbilityEntry(
      ability: map['ability'] != null ? Ability.fromMap(map['ability']) : null,
      isHidden: valueGuardian<bool>(map['is_hidden']),
      slot: valueGuardian<int>(map['slot']),
    );
  }

  Map<String, dynamic> toMap() => {
        'ability': ability?.toMap(),
        'is_hidden': isHidden,
        'slot': slot,
      };
}

class Ability {
  String? name;
  String? url;

  Ability({this.name, this.url});

  factory Ability.fromMap(Map<String, dynamic> map) {
    return Ability(
      name: valueGuardian<String>(map['name']),
      url: valueGuardian<String>(map['url']),
    );
  }

  Map<String, dynamic> toMap() => {'name': name, 'url': url};
}

class Cries {
  String? latest;
  String? legacy;

  Cries({this.latest, this.legacy});

  factory Cries.fromMap(Map<String, dynamic> map) {
    return Cries(
      latest: valueGuardian<String>(map['latest']),
      legacy: valueGuardian<String>(map['legacy']),
    );
  }

  Map<String, dynamic> toMap() => {'latest': latest, 'legacy': legacy};
}

class Form {
  String? name;
  String? url;

  Form({this.name, this.url});

  factory Form.fromMap(Map<String, dynamic> map) {
    return Form(
      name: valueGuardian<String>(map['name']),
      url: valueGuardian<String>(map['url']),
    );
  }

  Map<String, dynamic> toMap() => {'name': name, 'url': url};
}

class GameIndex {
  int? gameIndex;
  Version? version;

  GameIndex({this.gameIndex, this.version});

  factory GameIndex.fromMap(Map<String, dynamic> map) {
    return GameIndex(
      gameIndex: valueGuardian<int>(map['game_index']),
      version: map['version'] != null ? Version.fromMap(map['version']) : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'game_index': gameIndex,
        'version': version?.toMap(),
      };
}

class Version {
  String? name;
  String? url;

  Version({this.name, this.url});

  factory Version.fromMap(Map<String, dynamic> map) {
    return Version(
      name: valueGuardian<String>(map['name']),
      url: valueGuardian<String>(map['url']),
    );
  }

  Map<String, dynamic> toMap() => {'name': name, 'url': url};
}

class Move {
  MoveData? move;
  List<VersionGroupDetail>? versionGroupDetails;

  Move({this.move, this.versionGroupDetails});

  factory Move.fromMap(Map<String, dynamic> map) {
    return Move(
      move: map['move'] != null ? MoveData.fromMap(map['move']) : null,
      versionGroupDetails: valueGuardian<List>(map['version_group_details'])
          ?.map((e) => VersionGroupDetail.fromMap(e))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'move': move?.toMap(),
        'version_group_details':
            versionGroupDetails?.map((e) => e.toMap()).toList(),
      };
}

class MoveData {
  String? name;
  String? url;

  MoveData({this.name, this.url});

  factory MoveData.fromMap(Map<String, dynamic> map) {
    return MoveData(
      name: valueGuardian<String>(map['name']),
      url: valueGuardian<String>(map['url']),
    );
  }

  Map<String, dynamic> toMap() => {'name': name, 'url': url};
}

class VersionGroupDetail {
  int? levelLearnedAt;
  MoveLearnMethod? moveLearnMethod;
  int? order;
  VersionGroup? versionGroup;

  VersionGroupDetail({
    this.levelLearnedAt,
    this.moveLearnMethod,
    this.order,
    this.versionGroup,
  });

  factory VersionGroupDetail.fromMap(Map<String, dynamic> map) {
    return VersionGroupDetail(
      levelLearnedAt: valueGuardian<int>(map['level_learned_at']),
      moveLearnMethod: map['move_learn_method'] != null
          ? MoveLearnMethod.fromMap(map['move_learn_method'])
          : null,
      order: valueGuardian<int>(map['order']),
      versionGroup: map['version_group'] != null
          ? VersionGroup.fromMap(map['version_group'])
          : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'level_learned_at': levelLearnedAt,
        'move_learn_method': moveLearnMethod?.toMap(),
        'order': order,
        'version_group': versionGroup?.toMap(),
      };
}

class MoveLearnMethod {
  String? name;
  String? url;

  MoveLearnMethod({this.name, this.url});

  factory MoveLearnMethod.fromMap(Map<String, dynamic> map) {
    return MoveLearnMethod(
      name: valueGuardian<String>(map['name']),
      url: valueGuardian<String>(map['url']),
    );
  }

  Map<String, dynamic> toMap() => {'name': name, 'url': url};
}

class VersionGroup {
  String? name;
  String? url;

  VersionGroup({this.name, this.url});

  factory VersionGroup.fromMap(Map<String, dynamic> map) {
    return VersionGroup(
      name: valueGuardian<String>(map['name']),
      url: valueGuardian<String>(map['url']),
    );
  }

  Map<String, dynamic> toMap() => {'name': name, 'url': url};
}

class PastAbility {
  List<AbilityEntry>? abilities;
  Generation? generation;

  PastAbility({this.abilities, this.generation});

  factory PastAbility.fromMap(Map<String, dynamic> map) {
    return PastAbility(
      abilities: valueGuardian<List>(map['abilities'])
          ?.map((e) => AbilityEntry.fromMap(e))
          .toList(),
      generation: map['generation'] != null
          ? Generation.fromMap(map['generation'])
          : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'abilities': abilities?.map((e) => e.toMap()).toList(),
        'generation': generation?.toMap(),
      };
}

class Generation {
  String? name;
  String? url;

  Generation({this.name, this.url});

  factory Generation.fromMap(Map<String, dynamic> map) {
    return Generation(
      name: valueGuardian<String>(map['name']),
      url: valueGuardian<String>(map['url']),
    );
  }

  Map<String, dynamic> toMap() => {'name': name, 'url': url};
}

class Species {
  String? name;
  String? url;

  Species({this.name, this.url});

  factory Species.fromMap(Map<String, dynamic> map) {
    return Species(
      name: valueGuardian<String>(map['name']),
      url: valueGuardian<String>(map['url']),
    );
  }

  Map<String, dynamic> toMap() => {'name': name, 'url': url};
}

class Sprites {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;
  Other? other;
  Versions? versions;

  Sprites({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
    this.other,
    this.versions,
  });

  factory Sprites.fromMap(Map<String, dynamic> map) {
    return Sprites(
      backDefault: valueGuardian<String>(map['back_default']),
      backFemale: valueGuardian<String>(map['back_female']),
      backShiny: valueGuardian<String>(map['back_shiny']),
      backShinyFemale: valueGuardian<String>(map['back_shiny_female']),
      frontDefault: valueGuardian<String>(map['front_default']),
      frontFemale: valueGuardian<String>(map['front_female']),
      frontShiny: valueGuardian<String>(map['front_shiny']),
      frontShinyFemale: valueGuardian<String>(map['front_shiny_female']),
      other: map['other'] != null ? Other.fromMap(map['other']) : null,
      versions:
          map['versions'] != null ? Versions.fromMap(map['versions']) : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'back_default': backDefault,
        'back_female': backFemale,
        'back_shiny': backShiny,
        'back_shiny_female': backShinyFemale,
        'front_default': frontDefault,
        'front_female': frontFemale,
        'front_shiny': frontShiny,
        'front_shiny_female': frontShinyFemale,
        'other': other?.toMap(),
        'versions': versions?.toMap(),
      };
}

class Other {
  DreamWorld? dreamWorld;
  Home? home;
  OfficialArtwork? officialArtwork;
  Showdown? showdown;

  Other({
    this.dreamWorld,
    this.home,
    this.officialArtwork,
    this.showdown,
  });

  factory Other.fromMap(Map<String, dynamic> map) {
    return Other(
      dreamWorld: map['dream_world'] != null
          ? DreamWorld.fromMap(map['dream_world'])
          : null,
      home: map['home'] != null ? Home.fromMap(map['home']) : null,
      officialArtwork: map['official-artwork'] != null
          ? OfficialArtwork.fromMap(map['official-artwork'])
          : null,
      showdown:
          map['showdown'] != null ? Showdown.fromMap(map['showdown']) : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'dream_world': dreamWorld?.toMap(),
        'home': home?.toMap(),
        'official-artwork': officialArtwork?.toMap(),
        'showdown': showdown?.toMap(),
      };
}

class DreamWorld {
  String? frontDefault;
  String? frontFemale;

  DreamWorld({this.frontDefault, this.frontFemale});

  factory DreamWorld.fromMap(Map<String, dynamic> map) {
    return DreamWorld(
      frontDefault: valueGuardian<String>(map['front_default']),
      frontFemale: valueGuardian<String>(map['front_female']),
    );
  }

  Map<String, dynamic> toMap() => {
        'front_default': frontDefault,
        'front_female': frontFemale,
      };
}

class Home {
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  Home({
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory Home.fromMap(Map<String, dynamic> map) {
    return Home(
      frontDefault: valueGuardian<String>(map['front_default']),
      frontFemale: valueGuardian<String>(map['front_female']),
      frontShiny: valueGuardian<String>(map['front_shiny']),
      frontShinyFemale: valueGuardian<String>(map['front_shiny_female']),
    );
  }

  Map<String, dynamic> toMap() => {
        'front_default': frontDefault,
        'front_female': frontFemale,
        'front_shiny': frontShiny,
        'front_shiny_female': frontShinyFemale,
      };
}

class OfficialArtwork {
  String? frontDefault;
  String? frontShiny;

  OfficialArtwork({this.frontDefault, this.frontShiny});

  factory OfficialArtwork.fromMap(Map<String, dynamic> map) {
    return OfficialArtwork(
      frontDefault: valueGuardian<String>(map['front_default']),
      frontShiny: valueGuardian<String>(map['front_shiny']),
    );
  }

  Map<String, dynamic> toMap() => {
        'front_default': frontDefault,
        'front_shiny': frontShiny,
      };
}

class Showdown {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  Showdown({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory Showdown.fromMap(Map<String, dynamic> map) {
    return Showdown(
      backDefault: valueGuardian<String>(map['back_default']),
      backFemale: valueGuardian<String>(map['back_female']),
      backShiny: valueGuardian<String>(map['back_shiny']),
      backShinyFemale: valueGuardian<String>(map['back_shiny_female']),
      frontDefault: valueGuardian<String>(map['front_default']),
      frontFemale: valueGuardian<String>(map['front_female']),
      frontShiny: valueGuardian<String>(map['front_shiny']),
      frontShinyFemale: valueGuardian<String>(map['front_shiny_female']),
    );
  }

  Map<String, dynamic> toMap() => {
        'back_default': backDefault,
        'back_female': backFemale,
        'back_shiny': backShiny,
        'back_shiny_female': backShinyFemale,
        'front_default': frontDefault,
        'front_female': frontFemale,
        'front_shiny': frontShiny,
        'front_shiny_female': frontShinyFemale,
      };
}

class Versions {
  GenerationI? generationI;
  GenerationII? generationIi;
  GenerationIII? generationIii;
  GenerationIV? generationIv;
  GenerationV? generationV;
  GenerationVI? generationVi;
  GenerationVII? generationVii;
  GenerationVIII? generationViii;

  Versions({
    this.generationI,
    this.generationIi,
    this.generationIii,
    this.generationIv,
    this.generationV,
    this.generationVi,
    this.generationVii,
    this.generationViii,
  });

  factory Versions.fromMap(Map<String, dynamic> map) {
    return Versions(
      generationI: map['generation-i'] != null
          ? GenerationI.fromMap(map['generation-i'])
          : null,
      generationIi: map['generation-ii'] != null
          ? GenerationII.fromMap(map['generation-ii'])
          : null,
      generationIii: map['generation-iii'] != null
          ? GenerationIII.fromMap(map['generation-iii'])
          : null,
      generationIv: map['generation-iv'] != null
          ? GenerationIV.fromMap(map['generation-iv'])
          : null,
      generationV: map['generation-v'] != null
          ? GenerationV.fromMap(map['generation-v'])
          : null,
      generationVi: map['generation-vi'] != null
          ? GenerationVI.fromMap(map['generation-vi'])
          : null,
      generationVii: map['generation-vii'] != null
          ? GenerationVII.fromMap(map['generation-vii'])
          : null,
      generationViii: map['generation-viii'] != null
          ? GenerationVIII.fromMap(map['generation-viii'])
          : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'generation-i': generationI?.toMap(),
        'generation-ii': generationIi?.toMap(),
        'generation-iii': generationIii?.toMap(),
        'generation-iv': generationIv?.toMap(),
        'generation-v': generationV?.toMap(),
        'generation-vi': generationVi?.toMap(),
        'generation-vii': generationVii?.toMap(),
        'generation-viii': generationViii?.toMap(),
      };
}
