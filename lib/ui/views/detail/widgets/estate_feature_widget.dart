import 'package:flutter/material.dart';
import 'package:funda_assignment/data/models/estate_detail/characters.dart';
import 'package:funda_assignment/ui/views/detail/widgets/estate_feature_listview.dart';
import 'package:funda_assignment/ui/views/detail/widgets/show_more_button_widget.dart';

class EstateFeatureWidget extends StatefulWidget {
  final List<Feature> features;
  const EstateFeatureWidget({Key? key, required this.features})
      : super(key: key);

  @override
  State<EstateFeatureWidget> createState() => _EstateFeatureWidgetState();
}

class _EstateFeatureWidgetState extends State<EstateFeatureWidget>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _expandAnim;
  bool _isExpanded = false;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() {
        setState(() {});
      });

    _expandAnim = Tween<double>(
      begin: 250.0,
      end: 800.0,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.bounceOut,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: _expandAnim!.value != 800 ? _expandAnim!.value : null,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Features', style: Theme.of(context).textTheme.headline3),
                const SizedBox(
                  height: 20,
                ),
                EstateFeatureListView(features: widget.features)
              ],
            ),
          ),
        ),
        Visibility(
          visible: !_isExpanded,
          child: ShowMoreButtonWidget(
            onPressed: () {
              _isExpanded = true;
              _controller!.forward();
            },
          ),
        ),
      ],
    );
  }
}
