import 'package:flutter/material.dart';
import 'package:funda_assignment/data/models/estate_detail/characters.dart';
import 'package:funda_assignment/ui/views/detail/widgets/estate_feature_listview.dart';

class EstateFeatureWidget extends StatelessWidget {
  final List<Feature> features;
  const EstateFeatureWidget({Key? key, required this.features})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Features', style: Theme.of(context).textTheme.headline3),
        const SizedBox(
          height: 20,
        ),
        EstateFeatureListView(features: features)
      ],
    );
  }
}
