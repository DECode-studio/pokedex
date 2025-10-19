import 'package:flutter/material.dart';

class AppColors {
  static const Color grass = Color(0xFF48D0B0);
  static const Color fire = Color(0xFFF7786B);
  static const Color water = Color(0xFF58ABF6);
  static const Color electric = Color(0xFFFFCE4B);

  static const Color textPrimary = Color(0xFF2F2F2F);
  static const Color textSecondary = Color(0xFF6B6B6B);

  static const Color background = Color(0xFFF5F6FA);
  static const Color backgroundPrimary = Color(0xFFF5F6FA);
  static const Color backgroundSecondary = Color(0xFFF5F6FA);

  static const Color white = Colors.white;
  static const Color black = Colors.black;

  static Color getBgColor(
    String type,
  ) {
    switch (type.toLowerCase()) {
      case 'fire':
        return AppColors.fire;
      case 'water':
        return AppColors.water;
      case 'electric':
        return AppColors.electric;
      default:
        return AppColors.grass;
    }
  }
}
