import 'package:flutter/material.dart';
import 'package:funda_assignment/data/models/estate_detail/characters.dart';
import 'package:funda_assignment/ui/views/detail/widgets/feature_item_widget.dart';

class EstateFeatureListView extends StatelessWidget {
  final List<Feature> features;
  const EstateFeatureListView({Key? key, required this.features})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return FeatureItemWidget(feature: features[index]);
      },
      padding: EdgeInsets.zero,
      itemCount: features.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
