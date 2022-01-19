import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:funda_assignment/ui/views/detail/widgets/show_more_button_widget.dart';

// in this widget we create expandable animation view in simplest ways.
// usually we should create this widget with painer but we have not enough time for that.
// I though that we have a description with more than 5 lines. So if user press more firstly
// we animated from 5 line to 20 line in 1 second. after that we didnt need it we can show all of lines.
// I know that it should be changed to worked for all platforms. but it take time as a seprate project.
// some body use a boolean to show all or some part but I decided to show my animation skills here.
class ExpandableText extends StatefulHookWidget {
  final String text;
  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with TickerProviderStateMixin {
  AnimationController? _controller;

  Animation? animation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    animation = Tween(begin: 5.0, end: 20).animate(_controller!);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _isExpandedState = useState(false);

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        AnimatedBuilder(
            animation: animation!,
            builder: (context, child) {
              return Text(
                widget.text,
                key: const ValueKey(1),
                style: Theme.of(context).textTheme.bodyText1,
                maxLines: animation!.value.round() != 20
                    ? animation!.value.round()
                    : null,
              );
            }),
        Positioned(
          bottom: 0,
          child: Visibility(
              visible: !_isExpandedState.value,
              child: ShowMoreButtonWidget(
                onPressed: () {
                  _isExpandedState.value = true;
                  _controller!.forward();
                },
              )),
        )
      ],
    );
  }
}
