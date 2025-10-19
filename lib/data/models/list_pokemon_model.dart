import 'dart:convert';

import 'package:pokedex/core/utils/guard_value.dart';

class ListPokemonModel {
  int? count;
  String? next;
  String? previous;
  List<ResultModel>? results;

  ListPokemonModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  factory ListPokemonModel.fromMap(Map<String, dynamic> map) {
    return ListPokemonModel(
      count: valueGuardian<int>(map['count']),
      next: valueGuardian<String>(map['next']),
      previous: valueGuardian<String>(map['previous']),
      results: map['results'] != null
          ? List<ResultModel>.from(
              (map['results'] as List).map((x) => ResultModel.fromMap(x)))
          : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'count': count,
        'next': next,
        'previous': previous,
        'results': results != null
            ? List<dynamic>.from(results!.map((x) => x.toMap()))
            : null,
      };

  factory ListPokemonModel.fromJson(String source) {
    return ListPokemonModel.fromMap(
      Map<String, dynamic>.from(json.decode(source)),
    );
  }

  String toJson() => json.encode(toMap());
}

class ResultModel {
  String? name;
  String? url;

  ResultModel({
    this.name,
    this.url,
  });

  factory ResultModel.fromMap(Map<String, dynamic> map) {
    return ResultModel(
      name: valueGuardian<String>(map['name']),
      url: valueGuardian<String>(map['url']),
    );
  }

  Map<String, dynamic> toMap() => {
        'name': name,
        'url': url,
      };

  factory ResultModel.fromJson(String source) {
    return ResultModel.fromMap(
      Map<String, dynamic>.from(json.decode(source)),
    );
  }

  String toJson() => json.encode(toMap());
}
