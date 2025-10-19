import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/core/theme/app_colors.dart';

class FloatingLoading {
  static final _overlay = OverlayEntry(
    builder: (_) => const _FloatingLoadingWidget(),
  );

  static bool _isShowing = false;

  static void show() {
    if (!_isShowing) {
      _isShowing = true;
      Overlay.of(Get.overlayContext!, rootOverlay: true).insert(_overlay);
    }
  }

  static void hide() {
    if (_isShowing) {
      _overlay.remove();
      _isShowing = false;
    }
  }
}

class _FloatingLoadingWidget extends StatelessWidget {
  const _FloatingLoadingWidget();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black45,
          width: double.infinity,
          height: double.infinity,
        ),
        Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.25),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 4,
                  color: AppColors.backgroundPrimary,
                ),
                SizedBox(height: 14),
                Text(
                  'Loading...',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black.withOpacity(0.87),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
