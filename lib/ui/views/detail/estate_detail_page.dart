import 'package:flutter/material.dart';
import 'package:funda_assignment/data/models/estate_detail/estate_detail.dart';
import 'package:funda_assignment/data/models/estate_detail/media.dart';
import 'package:funda_assignment/data/models/estate_detail/video.dart';
import 'package:funda_assignment/ui/route/const_routes.dart';
import 'package:funda_assignment/ui/views/detail/widgets/agent_widget.dart';
import 'package:funda_assignment/ui/views/detail/widgets/estate_description_widget.dart';
import 'package:funda_assignment/ui/views/detail/widgets/estate_feature_widget.dart';
import 'package:funda_assignment/ui/views/detail/widgets/estate_info_widget.dart';
import 'package:funda_assignment/ui/widgets/brightness_button.dart';
import 'package:funda_assignment/ui/widgets/map_widget.dart';
import 'package:funda_assignment/ui/views/detail/widgets/media_action_button_widget.dart';
import 'package:latlong2/latlong.dart';

class EstateDetailPage extends StatefulWidget {
  final EstateDetail estate;
  const EstateDetailPage({Key? key, required this.estate}) : super(key: key);

  @override
  _EstateDetailPageState createState() => _EstateDetailPageState();
}

class _EstateDetailPageState extends State<EstateDetailPage> {
  @override
  Widget build(BuildContext context) {
    const verticalPadding = 40.0;
    const paddingHorizontal = 20.0;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          actions: const [BrightnessButton()],
          flexibleSpace: FlexibleSpaceBar(
              background: InkWell(
            onTap: () {
              Navigator.pushNamed(context, FundaRoute.photoGalleryPage,
                  arguments: widget.estate.photoMedia);
            },
            child: Image.network(
              widget.estate.mainPhoto!,
              fit: BoxFit.cover,
            ),
          )),
        ),
        SliverToBoxAdapter(
          child: MediaActionButtonWidget(
            hasVideo: widget.estate.hasVideo!,
            hasPlot: widget.estate.hasBasePlacement!,
            hasPanarama: widget.estate.hasIpix!,
            onPanoramaPressed: () {
              _goToPanoramaPage(widget.estate.panoramaImages);
            },
            onPlotPressed: () {
              /* I can't finde any related between medias and plot images,
                       actually I cant find where I can find the plot imaages 
                       so I cant displayes them seperately.*/
            },
            onVideoPressed: () {
              _goToVidePlayerPage(widget.estate.video);
            },
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(paddingHorizontal),
          sliver: SliverToBoxAdapter(
            child: EstateInfoWidget(
              address: widget.estate.address!,
              detailAddress: widget.estate.detailAddress,
              plotArea: widget.estate.plotArea!,
              resedentialArea: widget.estate.resedentialArea!,
              bedRooms: widget.estate.numberOfBedRooms,
              price: widget.estate.price!.showingPrice,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
              right: paddingHorizontal, left: paddingHorizontal),
          sliver: SliverToBoxAdapter(
            child: EstateDescriptionWidget(
              description: widget.estate.fullDescription!,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
              top: verticalPadding,
              right: paddingHorizontal,
              left: paddingHorizontal),
          sliver: SliverToBoxAdapter(
            child: EstateFeatureWidget(
              features: widget.estate.featires!,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
              top: verticalPadding,
              right: paddingHorizontal,
              left: paddingHorizontal),
          sliver: SliverToBoxAdapter(
            child: MapWidget(
              coordinate: LatLng(
                widget.estate.latitude!,
                widget.estate.longitude!,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
              top: verticalPadding,
              bottom: verticalPadding,
              right: paddingHorizontal,
              left: paddingHorizontal),
          sliver: SliverToBoxAdapter(
            child: AgentWidget(
              agentName: widget.estate.agentName!,
              agentPhone: widget.estate.agentPhone!,
            ),
          ),
        ),
      ],
    ));
  }

  void _goToPanoramaPage(List<Media> panoramaImages) {
    Navigator.pushNamed(context, FundaRoute.panaromaPage,
        arguments: panoramaImages);
  }

  void _goToVidePlayerPage(Video? video) {
    Navigator.pushNamed(context, FundaRoute.videoPlayerPage, arguments: video);
  }
}
