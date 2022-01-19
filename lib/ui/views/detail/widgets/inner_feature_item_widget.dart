import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:funda_assignment/data/models/estate_detail/inner_feature.dart';
import 'package:funda_assignment/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InnerFeatureItemWidget extends HookConsumerWidget {
  final InnerFeature innerFeature;
  final bool isSubFeature;
  const InnerFeatureItemWidget(
      {Key? key, required this.innerFeature, required this.isSubFeature})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = ref.watch(brightnessProvider.state);
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
                return {
                  'color':
                      brightness.state == Brightness.dark ? 'white' : 'black'
                };
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
