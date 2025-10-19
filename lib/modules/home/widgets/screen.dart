import 'package:flutter/material.dart';
import 'package:pokedex/core/constant/assets.dart';
import 'package:pokedex/modules/home/home_viewmodel.dart';

import 'grid.dart';
import 'toolbar.dart';

Widget screenPage({
  required HomeViewModel controller,
  required Size size,
}) =>
    Stack(
      children: [
        toolBar(),
        Positioned(
          top: -75,
          right: -95,
          child: Opacity(
            opacity: 0.1,
            child: Image.asset(
              ImageAsset.poketBallIcon,
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: gridData(
            controller: controller,
            size: size,
          ),
        ),
      ],
    );
