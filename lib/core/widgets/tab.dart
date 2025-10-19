import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/app_colors.dart';
import 'package:pokedex/core/theme/app_text_styles.dart';

Widget tabBar({
  required int currentIndex,
  required List<String> tabs,
  required Function(int index) onTap,
  EdgeInsetsGeometry? margin,
  Color? activeColor,
  Color? inactiveColor,
  Color? indicatorColor,
}) =>
    Container(
      margin: margin ??
          const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: List.generate(
          tabs.length,
          (index) => Expanded(
            child: GestureDetector(
              onTap: () => onTap(index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 12),
                  Text(
                    tabs[index],
                    textAlign: TextAlign.center,
                    style: AppTextStyles.label.copyWith(
                      fontWeight: currentIndex == index
                          ? FontWeight.w600
                          : FontWeight.w400,
                      color: currentIndex == index
                          ? (activeColor ?? AppColors.textPrimary)
                          : (inactiveColor ?? AppColors.textSecondary),
                    ),
                  ),
                  const SizedBox(height: 8),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    height: 2,
                    width: currentIndex == index ? 40 : 0,
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? (indicatorColor ?? AppColors.purple)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
