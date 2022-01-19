import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:funda_assignment/data/models/estate_detail/characters.dart';
import 'package:funda_assignment/ui/views/detail/widgets/inner_feature_item_widget.dart';

class FeatureItemWidget extends StatelessWidget {
  final Feature feature;
  const FeatureItemWidget({Key? key, required this.feature}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        Text(feature.titel!, style: Theme.of(context).textTheme.headline5),
        const Divider(
          height: 20,
        ),
        if (feature.subFeature != null)
          HtmlWidget(
            feature.subFeature!.titel!,
            textStyle: Theme.of(context).textTheme.bodyText1,
          ),
        if (feature.subFeature != null)
          const Divider(
            height: 8,
          ),
        ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return InnerFeatureItemWidget(
              innerFeature: feature.innerFeatures![index],
              isSubFeature: feature.subFeature != null,
            );
          },
          itemCount: feature.innerFeatures!.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        )
      ],
    );
  }
}
