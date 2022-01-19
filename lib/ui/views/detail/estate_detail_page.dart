import 'package:flutter/material.dart';
import 'package:funda_assignment/data/models/estate_detail/estate_detail.dart';
import 'package:funda_assignment/data/models/estate_detail/media.dart';
import 'package:funda_assignment/data/models/estate_detail/video.dart';
import 'package:funda_assignment/ui/route/const_routes.dart';
import 'package:funda_assignment/ui/views/detail/widgets/agent_widget.dart';
import 'package:funda_assignment/ui/views/detail/widgets/estate_description_widget.dart';
import 'package:funda_assignment/ui/views/detail/widgets/estate_feature_widget.dart';
import 'package:funda_assignment/ui/views/detail/widgets/estate_info_widget.dart';
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
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext contet, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
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
              )
            ];
          },
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                MediaActionButtonWidget(
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      EstateInfoWidget(
                        address: widget.estate.address!,
                        detailAddress: widget.estate.detailAddress,
                        plotArea: widget.estate.plotArea!,
                        resedentialArea: widget.estate.resedentialArea!,
                        bedRooms: widget.estate.numberOfBedRooms,
                        price: widget.estate.price!.showingPrice,
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      EstateDescriptionWidget(
                        description: widget.estate.fullDescription!,
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      EstateFeatureWidget(
                        features: widget.estate.featires!,
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      MapWidget(
                        coordinate: LatLng(
                          widget.estate.latitude!,
                          widget.estate.longitude!,
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      AgentWidget(
                        agentName: widget.estate.agentName!,
                        agentPhone: widget.estate.agentPhone!,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  void _goToPanoramaPage(List<Media> panoramaImages) {
    Navigator.pushNamed(context, FundaRoute.panaromaPage,
        arguments: panoramaImages);
  }

  void _goToVidePlayerPage(Video? video) {
    Navigator.pushNamed(context, FundaRoute.videoPlayerPage, arguments: video);
  }
}
