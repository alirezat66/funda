import 'package:flutter/material.dart';
import 'package:funda_assignment/data/models/estate_detail/estate_detail.dart';
import 'package:funda_assignment/ui/views/detail/widgets/estate_description_widget.dart';
import 'package:funda_assignment/ui/views/detail/widgets/estate_info_widget.dart';
import 'package:funda_assignment/ui/views/detail/widgets/media_action_button_widget.dart';

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
                    background: Image.network(
                  widget.estate.mainPhoto!,
                  fit: BoxFit.cover,
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
                      const SizedBox(height: 48,),
                      EstateDescriptionWidget(
                        description: widget.estate.fullDescription!,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
