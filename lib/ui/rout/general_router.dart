import 'package:flutter/material.dart';
import 'package:funda_assignment/ui/rout/const_routes.dart';

import '../screen.dart';

class GeneralRouter {
  static Map<String, WidgetBuilder> pages = {
    FundaRoute.detailPafe: (context) => const EstateDetailPage(),
  };
}
