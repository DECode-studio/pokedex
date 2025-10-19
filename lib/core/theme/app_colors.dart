import 'package:flutter/material.dart';

class AppColors {
  // Type Color
  static const Color normal = Color(0xFFA8A77A);
  static const Color fighting = Color(0xFFC22E28);
  static const Color flying = Color(0xFFA98FF3);
  static const Color poison = Color(0xFFA33EA1);
  static const Color ground = Color(0xFFE2BF65);
  static const Color rock = Color(0xFFB6A136);
  static const Color bug = Color(0xFFA6B91A);
  static const Color ghost = Color(0xFF735797);
  static const Color steel = Color(0xFFB7B7CE);
  static const Color fire = Color(0xFFFB6C6C);
  static const Color water = Color(0xFF77BDFE);
  static const Color grass = Color(0xFF48D0B0);
  static const Color electric = Color(0xFFFFD86F);
  static const Color psychic = Color(0xFFF95587);
  static const Color ice = Color(0xFF96D9D6);
  static const Color dragon = Color(0xFF6F35FC);
  static const Color dark = Color(0xFF705746);
  static const Color fairy = Color(0xFFD685AD);
  static const Color stellar = Color(0xFF6C6CB3);
  static const Color unknown = Color(0xFF68A090);

  // Text colors
  static const Color textPrimary = Color(0xFF2F2F2F);
  static const Color textSecondary = Color(0xFF6B6B6B);

  // Backgrounds'
  static const Color transparent = Colors.transparent;
  static const Color background = Color(0xFFF5F6FA);
  static const Color backgroundPrimary = Color(0xFFF5F6FA);
  static const Color backgroundSecondary = Color(0xFFF5F6FA);

  // Common
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  /// 🔹 Get background color by type name (case-insensitive)
  static Color getBgColor(String type) {
    switch (type.toLowerCase()) {
      case 'normal':
        return normal;
      case 'fighting':
        return fighting;
      case 'flying':
        return flying;
      case 'poison':
        return poison;
      case 'ground':
        return ground;
      case 'rock':
        return rock;
      case 'bug':
        return bug;
      case 'ghost':
        return ghost;
      case 'steel':
        return steel;
      case 'fire':
        return fire;
      case 'water':
        return water;
      case 'grass':
        return grass;
      case 'electric':
        return electric;
      case 'psychic':
        return psychic;
      case 'ice':
        return ice;
      case 'dragon':
        return dragon;
      case 'dark':
        return dark;
      case 'fairy':
        return fairy;
      case 'stellar':
        return stellar;
      case 'unknown':
        return unknown;
      default:
        return grass; // fallback
    }
  }
}
