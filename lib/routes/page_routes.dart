import 'package:customerchurn_classification_app/feature/result/result_binding.dart';
import 'package:customerchurn_classification_app/feature/result/result_page.dart';
import 'package:get/get.dart';
import '../feature/home/home_binding.dart';
import '../feature/home/home_page.dart';

import 'page_names.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: PageName.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: PageName.RESULT,
      page: () => const ResultPage(),
      binding: ResultBinding(),
    ),
  ];
}
