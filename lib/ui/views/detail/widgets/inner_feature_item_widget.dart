import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:funda_assignment/data/models/estate_detail/inner_feature.dart';

class InnerFeatureItemWidget extends StatelessWidget {
  final InnerFeature innerFeature;
  final bool isSubFeature;
  const InnerFeatureItemWidget(
      {Key? key, required this.innerFeature, required this.isSubFeature})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isSubFeature ? 16 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            innerFeature.name,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          HtmlWidget(
            innerFeature.value,
            customStylesBuilder: (element) {
              if (true) {
                return {'color': 'black'};
              }
            },
            textStyle: Theme.of(context).textTheme.bodyText1,
          ),
          const Divider(
            height: 12,
          )
        ],
      ),
    );
  }
}
