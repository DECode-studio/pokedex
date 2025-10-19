import 'package:get/get.dart';
import 'package:pokedex/modules/detail/detail_view.dart';
import 'package:pokedex/modules/home/home_view.dart';

class AppRoutes {
  static const String pokedex = '/';
  static const String detail = '/detail';
}

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.pokedex,
      page: () => HomeView(),
    ),
    GetPage(
      name: AppRoutes.detail,
      page: () => DetailView(),
    ),
  ];
}
