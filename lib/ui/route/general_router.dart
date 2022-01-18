import 'package:flutter/material.dart';
import 'package:funda_assignment/ui/route/const_routes.dart';

import '../screen.dart';

class GeneralRouter {
  static Map<String, WidgetBuilder> pages = {
    FundaRoute.detailScreen: (context) => const EstateDetailScreen(),
    FundaRoute.photoGalleryPage: (context) => PhotoGalleryPage(
        ModalRoute.of(context)!.settings.arguments as List<dynamic>),
  };
}
