import 'package:pokedex/core/utils/guard_value.dart';

class GenerationI {
  RedBlue? redBlue;
  Yellow? yellow;

  GenerationI({this.redBlue, this.yellow});

  factory GenerationI.fromMap(Map<String, dynamic> map) {
    return GenerationI(
      redBlue:
          map['red-blue'] != null ? RedBlue.fromMap(map['red-blue']) : null,
      yellow: map['yellow'] != null ? Yellow.fromMap(map['yellow']) : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'red-blue': redBlue?.toMap(),
        'yellow': yellow?.toMap(),
      };
}

class RedBlue {
  String? backDefault;
  String? backGray;
  String? backTransparent;
  String? frontDefault;
  String? frontGray;
  String? frontTransparent;

  RedBlue({
    this.backDefault,
    this.backGray,
    this.backTransparent,
    this.frontDefault,
    this.frontGray,
    this.frontTransparent,
  });

  factory RedBlue.fromMap(Map<String, dynamic> map) {
    return RedBlue(
      backDefault: valueGuardian<String>(map['back_default']),
      backGray: valueGuardian<String>(map['back_gray']),
      backTransparent: valueGuardian<String>(map['back_transparent']),
      frontDefault: valueGuardian<String>(map['front_default']),
      frontGray: valueGuardian<String>(map['front_gray']),
      frontTransparent: valueGuardian<String>(map['front_transparent']),
    );
  }

  Map<String, dynamic> toMap() => {
        'back_default': backDefault,
        'back_gray': backGray,
        'back_transparent': backTransparent,
        'front_default': frontDefault,
        'front_gray': frontGray,
        'front_transparent': frontTransparent,
      };
}

class Yellow {
  String? backDefault;
  String? backGray;
  String? backTransparent;
  String? frontDefault;
  String? frontGray;
  String? frontTransparent;

  Yellow({
    this.backDefault,
    this.backGray,
    this.backTransparent,
    this.frontDefault,
    this.frontGray,
    this.frontTransparent,
  });

  factory Yellow.fromMap(Map<String, dynamic> map) {
    return Yellow(
      backDefault: valueGuardian<String>(map['back_default']),
      backGray: valueGuardian<String>(map['back_gray']),
      backTransparent: valueGuardian<String>(map['back_transparent']),
      frontDefault: valueGuardian<String>(map['front_default']),
      frontGray: valueGuardian<String>(map['front_gray']),
      frontTransparent: valueGuardian<String>(map['front_transparent']),
    );
  }

  Map<String, dynamic> toMap() => {
        'back_default': backDefault,
        'back_gray': backGray,
        'back_transparent': backTransparent,
        'front_default': frontDefault,
        'front_gray': frontGray,
        'front_transparent': frontTransparent,
      };
}

// Lanjutkan kelas GenerationII, GenerationIII, dst. sesuai kebutuhan...
// Untuk singkatnya, hanya contoh GenerationI yang ditampilkan secara lengkap.
// Anda bisa mengikuti pola yang sama untuk generasi lainnya.

class GenerationII {
  Crystal? crystal;
  Gold? gold;
  Silver? silver;

  GenerationII({this.crystal, this.gold, this.silver});

  factory GenerationII.fromMap(Map<String, dynamic> map) {
    return GenerationII(
      crystal: map['crystal'] != null ? Crystal.fromMap(map['crystal']) : null,
      gold: map['gold'] != null ? Gold.fromMap(map['gold']) : null,
      silver: map['silver'] != null ? Silver.fromMap(map['silver']) : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'crystal': crystal?.toMap(),
        'gold': gold?.toMap(),
        'silver': silver?.toMap(),
      };
}

class Crystal {
  String? backDefault;
  String? backShiny;
  String? backShinyTransparent;
  String? backTransparent;
  String? frontDefault;
  String? frontShiny;
  String? frontShinyTransparent;
  String? frontTransparent;

  Crystal({
    this.backDefault,
    this.backShiny,
    this.backShinyTransparent,
    this.backTransparent,
    this.frontDefault,
    this.frontShiny,
    this.frontShinyTransparent,
    this.frontTransparent,
  });

  factory Crystal.fromMap(Map<String, dynamic> map) {
    return Crystal(
      backDefault: valueGuardian<String>(map['back_default']),
      backShiny: valueGuardian<String>(map['back_shiny']),
      backShinyTransparent:
          valueGuardian<String>(map['back_shiny_transparent']),
      backTransparent: valueGuardian<String>(map['back_transparent']),
      frontDefault: valueGuardian<String>(map['front_default']),
      frontShiny: valueGuardian<String>(map['front_shiny']),
      frontShinyTransparent:
          valueGuardian<String>(map['front_shiny_transparent']),
      frontTransparent: valueGuardian<String>(map['front_transparent']),
    );
  }

  Map<String, dynamic> toMap() => {
        'back_default': backDefault,
        'back_shiny': backShiny,
        'back_shiny_transparent': backShinyTransparent,
        'back_transparent': backTransparent,
        'front_default': frontDefault,
        'front_shiny': frontShiny,
        'front_shiny_transparent': frontShinyTransparent,
        'front_transparent': frontTransparent,
      };
}

class Gold {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;
  String? frontTransparent;

  Gold({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
    this.frontTransparent,
  });

  factory Gold.fromMap(Map<String, dynamic> map) {
    return Gold(
      backDefault: valueGuardian<String>(map['back_default']),
      backShiny: valueGuardian<String>(map['back_shiny']),
      frontDefault: valueGuardian<String>(map['front_default']),
      frontShiny: valueGuardian<String>(map['front_shiny']),
      frontTransparent: valueGuardian<String>(map['front_transparent']),
    );
  }

  Map<String, dynamic> toMap() => {
        'back_default': backDefault,
        'back_shiny': backShiny,
        'front_default': frontDefault,
        'front_shiny': frontShiny,
        'front_transparent': frontTransparent,
      };
}

class Silver {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;
  String? frontTransparent;

  Silver({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
    this.frontTransparent,
  });

  factory Silver.fromMap(Map<String, dynamic> map) {
    return Silver(
      backDefault: valueGuardian<String>(map['back_default']),
      backShiny: valueGuardian<String>(map['back_shiny']),
      frontDefault: valueGuardian<String>(map['front_default']),
      frontShiny: valueGuardian<String>(map['front_shiny']),
      frontTransparent: valueGuardian<String>(map['front_transparent']),
    );
  }

  Map<String, dynamic> toMap() => {
        'back_default': backDefault,
        'back_shiny': backShiny,
        'front_default': frontDefault,
        'front_shiny': frontShiny,
        'front_transparent': frontTransparent,
      };
}

// Lanjutkan untuk GenerationIII, IV, dst. dengan pola yang sama...

class Stat {
  int? baseStat;
  int? effort;
  StatType? stat;

  Stat({this.baseStat, this.effort, this.stat});

  factory Stat.fromMap(Map<String, dynamic> map) {
    return Stat(
      baseStat: valueGuardian<int>(map['base_stat']),
      effort: valueGuardian<int>(map['effort']),
      stat: map['stat'] != null ? StatType.fromMap(map['stat']) : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'base_stat': baseStat,
        'effort': effort,
        'stat': stat?.toMap(),
      };
}

class StatType {
  String? name;
  String? url;

  StatType({this.name, this.url});

  factory StatType.fromMap(Map<String, dynamic> map) {
    return StatType(
      name: valueGuardian<String>(map['name']),
      url: valueGuardian<String>(map['url']),
    );
  }

  Map<String, dynamic> toMap() => {'name': name, 'url': url};
}

class TypeEntry {
  int? slot;
  TypeData? type;

  TypeEntry({this.slot, this.type});

  factory TypeEntry.fromMap(Map<String, dynamic> map) {
    return TypeEntry(
      slot: valueGuardian<int>(map['slot']),
      type: map['type'] != null ? TypeData.fromMap(map['type']) : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'slot': slot,
        'type': type?.toMap(),
      };
}

class TypeData {
  String? name;
  String? url;

  TypeData({this.name, this.url});

  factory TypeData.fromMap(Map<String, dynamic> map) {
    return TypeData(
      name: valueGuardian<String>(map['name']),
      url: valueGuardian<String>(map['url']),
    );
  }

  Map<String, dynamic> toMap() => {'name': name, 'url': url};
}

class GenerationIII {
  Emerald? emerald;
  FireredLeafgreen? fireredLeafgreen;
  RubySapphire? rubySapphire;

  GenerationIII({
    this.emerald,
    this.fireredLeafgreen,
    this.rubySapphire,
  });

  factory GenerationIII.fromMap(Map<String, dynamic> map) {
    return GenerationIII(
      emerald: map['emerald'] != null ? Emerald.fromMap(map['emerald']) : null,
      fireredLeafgreen: map['firered-leafgreen'] != null
          ? FireredLeafgreen.fromMap(map['firered-leafgreen'])
          : null,
      rubySapphire: map['ruby-sapphire'] != null
          ? RubySapphire.fromMap(map['ruby-sapphire'])
          : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'emerald': emerald?.toMap(),
        'firered-leafgreen': fireredLeafgreen?.toMap(),
        'ruby-sapphire': rubySapphire?.toMap(),
      };
}

class Emerald {
  String? frontDefault;
  String? frontShiny;

  Emerald({this.frontDefault, this.frontShiny});

  factory Emerald.fromMap(Map<String, dynamic> map) {
    return Emerald(
      frontDefault: valueGuardian<String>(map['front_default']),
      frontShiny: valueGuardian<String>(map['front_shiny']),
    );
  }

  Map<String, dynamic> toMap() => {
        'front_default': frontDefault,
        'front_shiny': frontShiny,
      };
}

class FireredLeafgreen {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  FireredLeafgreen({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
  });

  factory FireredLeafgreen.fromMap(Map<String, dynamic> map) {
    return FireredLeafgreen(
      backDefault: valueGuardian<String>(map['back_default']),
      backShiny: valueGuardian<String>(map['back_shiny']),
      frontDefault: valueGuardian<String>(map['front_default']),
      frontShiny: valueGuardian<String>(map['front_shiny']),
    );
  }

  Map<String, dynamic> toMap() => {
        'back_default': backDefault,
        'back_shiny': backShiny,
        'front_default': frontDefault,
        'front_shiny': frontShiny,
      };
}

class RubySapphire {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  RubySapphire({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
  });

  factory RubySapphire.fromMap(Map<String, dynamic> map) {
    return RubySapphire(
      backDefault: valueGuardian<String>(map['back_default']),
      backShiny: valueGuardian<String>(map['back_shiny']),
      frontDefault: valueGuardian<String>(map['front_default']),
      frontShiny: valueGuardian<String>(map['front_shiny']),
    );
  }

  Map<String, dynamic> toMap() => {
        'back_default': backDefault,
        'back_shiny': backShiny,
        'front_default': frontDefault,
        'front_shiny': frontShiny,
      };
}

class GenerationIV {
  DiamondPearl? diamondPearl;
  HeartgoldSoulsilver? heartgoldSoulsilver;
  Platinum? platinum;

  GenerationIV({
    this.diamondPearl,
    this.heartgoldSoulsilver,
    this.platinum,
  });

  factory GenerationIV.fromMap(Map<String, dynamic> map) {
    return GenerationIV(
      diamondPearl: map['diamond-pearl'] != null
          ? DiamondPearl.fromMap(map['diamond-pearl'])
          : null,
      heartgoldSoulsilver: map['heartgold-soulsilver'] != null
          ? HeartgoldSoulsilver.fromMap(map['heartgold-soulsilver'])
          : null,
      platinum:
          map['platinum'] != null ? Platinum.fromMap(map['platinum']) : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'diamond-pearl': diamondPearl?.toMap(),
        'heartgold-soulsilver': heartgoldSoulsilver?.toMap(),
        'platinum': platinum?.toMap(),
      };
}

class DiamondPearl {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  DiamondPearl({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory DiamondPearl.fromMap(Map<String, dynamic> map) {
    return DiamondPearl(
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

class HeartgoldSoulsilver extends DiamondPearl {
  HeartgoldSoulsilver({
    super.backDefault,
    super.backFemale,
    super.backShiny,
    super.backShinyFemale,
    super.frontDefault,
    super.frontFemale,
    super.frontShiny,
    super.frontShinyFemale,
  });

  factory HeartgoldSoulsilver.fromMap(Map<String, dynamic> map) {
    return HeartgoldSoulsilver(
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

  @override
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

class Platinum extends DiamondPearl {
  Platinum({
    super.backDefault,
    super.backFemale,
    super.backShiny,
    super.backShinyFemale,
    super.frontDefault,
    super.frontFemale,
    super.frontShiny,
    super.frontShinyFemale,
  });

  factory Platinum.fromMap(Map<String, dynamic> map) {
    return Platinum(
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

  @override
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

class GenerationV {
  BlackWhite? blackWhite;

  GenerationV({this.blackWhite});

  factory GenerationV.fromMap(Map<String, dynamic> map) {
    return GenerationV(
      blackWhite: map['black-white'] != null
          ? BlackWhite.fromMap(map['black-white'])
          : null,
    );
  }

  Map<String, dynamic> toMap() => {'black-white': blackWhite?.toMap()};
}

class BlackWhite {
  Animated? animated;
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  BlackWhite({
    this.animated,
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory BlackWhite.fromMap(Map<String, dynamic> map) {
    return BlackWhite(
      animated:
          map['animated'] != null ? Animated.fromMap(map['animated']) : null,
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
        'animated': animated?.toMap(),
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

class Animated {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  Animated({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory Animated.fromMap(Map<String, dynamic> map) {
    return Animated(
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

class GenerationVI {
  OmegarubyAlphasapphire? omegarubyAlphasapphire;
  XY? xY;

  GenerationVI({
    this.omegarubyAlphasapphire,
    this.xY,
  });

  factory GenerationVI.fromMap(Map<String, dynamic> map) {
    return GenerationVI(
      omegarubyAlphasapphire: map['omegaruby-alphasapphire'] != null
          ? OmegarubyAlphasapphire.fromMap(map['omegaruby-alphasapphire'])
          : null,
      xY: map['x-y'] != null ? XY.fromMap(map['x-y']) : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'omegaruby-alphasapphire': omegarubyAlphasapphire?.toMap(),
        'x-y': xY?.toMap(),
      };
}

class OmegarubyAlphasapphire {
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  OmegarubyAlphasapphire({
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory OmegarubyAlphasapphire.fromMap(Map<String, dynamic> map) {
    return OmegarubyAlphasapphire(
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

class XY extends OmegarubyAlphasapphire {
  XY({
    super.frontDefault,
    super.frontFemale,
    super.frontShiny,
    super.frontShinyFemale,
  });

  factory XY.fromMap(Map<String, dynamic> map) {
    return XY(
      frontDefault: valueGuardian<String>(map['front_default']),
      frontFemale: valueGuardian<String>(map['front_female']),
      frontShiny: valueGuardian<String>(map['front_shiny']),
      frontShinyFemale: valueGuardian<String>(map['front_shiny_female']),
    );
  }

  @override
  Map<String, dynamic> toMap() => {
        'front_default': frontDefault,
        'front_female': frontFemale,
        'front_shiny': frontShiny,
        'front_shiny_female': frontShinyFemale,
      };
}

class GenerationVII {
  IconsVII? icons;
  UltraSunUltraMoon? ultraSunUltraMoon;

  GenerationVII({
    this.icons,
    this.ultraSunUltraMoon,
  });

  factory GenerationVII.fromMap(Map<String, dynamic> map) {
    return GenerationVII(
      icons: map['icons'] != null ? IconsVII.fromMap(map['icons']) : null,
      ultraSunUltraMoon: map['ultra-sun-ultra-moon'] != null
          ? UltraSunUltraMoon.fromMap(map['ultra-sun-ultra-moon'])
          : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'icons': icons?.toMap(),
        'ultra-sun-ultra-moon': ultraSunUltraMoon?.toMap(),
      };
}

class IconsVII {
  String? frontDefault;
  String? frontFemale;

  IconsVII({this.frontDefault, this.frontFemale});

  factory IconsVII.fromMap(Map<String, dynamic> map) {
    return IconsVII(
      frontDefault: valueGuardian<String>(map['front_default']),
      frontFemale: valueGuardian<String>(map['front_female']),
    );
  }

  Map<String, dynamic> toMap() => {
        'front_default': frontDefault,
        'front_female': frontFemale,
      };
}

class UltraSunUltraMoon {
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  UltraSunUltraMoon({
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory UltraSunUltraMoon.fromMap(Map<String, dynamic> map) {
    return UltraSunUltraMoon(
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

class GenerationVIII {
  IconsVIII? icons;

  GenerationVIII({this.icons});

  factory GenerationVIII.fromMap(Map<String, dynamic> map) {
    return GenerationVIII(
      icons: map['icons'] != null ? IconsVIII.fromMap(map['icons']) : null,
    );
  }

  Map<String, dynamic> toMap() => {'icons': icons?.toMap()};
}

class IconsVIII {
  String? frontDefault;
  String? frontFemale;

  IconsVIII({this.frontDefault, this.frontFemale});

  factory IconsVIII.fromMap(Map<String, dynamic> map) {
    return IconsVIII(
      frontDefault: valueGuardian<String>(map['front_default']),
      frontFemale: valueGuardian<String>(map['front_female']),
    );
  }

  Map<String, dynamic> toMap() => {
        'front_default': frontDefault,
        'front_female': frontFemale,
      };
}
