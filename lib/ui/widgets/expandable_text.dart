import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
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
      begin: 5.0,
      end: 20.0,
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
      alignment: Alignment.topCenter,
      children: [
        Text(
          widget.text,
          style: Theme.of(context).textTheme.bodyText1,
          maxLines: _expandAnim!.value!.round() != 20
              ? _expandAnim!.value!.round()
              : null,
        ),
        Positioned(
          bottom: 0,
          child: Visibility(
            visible: !_isExpanded,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white.withOpacity(0.9),
              child: TextButton(
                  onPressed: () {
                    _isExpanded = true;
                    _controller!.forward();
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: const EdgeInsets.all(8),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text('show more')),
            ),
          ),
        )
      ],
    );
  }
}
