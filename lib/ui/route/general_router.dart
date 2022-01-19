import 'package:flutter/material.dart';
import 'package:funda_assignment/data/models/estate_detail/media.dart';
import 'package:funda_assignment/data/models/estate_detail/video.dart';
import 'package:funda_assignment/ui/route/const_routes.dart';

import '../screen.dart';
// usually I worled with autoroute but you mentioned that we didn't use framework
// as can as posible
class GeneralRouter {
  static Map<String, WidgetBuilder> pages = {
    FundaRoute.detailScreen: (context) => const EstateDetailScreen(),
    FundaRoute.photoGalleryPage: (context) => PhotoGalleryPage(
        ModalRoute.of(context)!.settings.arguments as List<Media>),
    FundaRoute.panaromaPage: (context) =>
        PanoramaPage(ModalRoute.of(context)!.settings.arguments as List<Media>),
    FundaRoute.videoPlayerPage: (context) =>
        VideoPlayerPage(ModalRoute.of(context)!.settings.arguments as Video)
  };
}
