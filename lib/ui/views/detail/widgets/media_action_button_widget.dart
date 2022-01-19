import 'package:flutter/material.dart';
import 'package:funda_assignment/ui/widgets/icon_text_widget.dart';

class MediaActionButtonWidget extends StatelessWidget {
  final bool hasVideo;
  final bool hasPanarama;
  final bool hasPlot;
  final VoidCallback onPanoramaPressed;
  final VoidCallback onPlotPressed;
  final VoidCallback onVideoPressed;
  const MediaActionButtonWidget(
      {Key? key,
      required this.onPanoramaPressed,
      this.hasVideo = false,
      this.hasPanarama = false,
      this.hasPlot = false,
      required this.onPlotPressed,
      required this.onVideoPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.5))),
      child: IntrinsicHeight(
        child: Row(
          children: [
            if (hasPlot)
              IconTextWidget(
                  iconData: Icons.view_quilt_outlined,
                  text: 'platteground',
                  onPressed: onPlotPressed),
            if (hasPlot)
              Container(
                width: 1,
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              ),
            if (hasPanarama)
              IconTextWidget(
                  iconData: Icons.threesixty_outlined,
                  text: '360\u00B0',
                  onPressed: onPanoramaPressed),
            if (hasPanarama)
              Container(
                width: 1,
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              ),
            if (hasVideo)
              IconTextWidget(
                  iconData: Icons.play_arrow_outlined,
                  text: 'Video',
                  onPressed: onVideoPressed),
          ],
        ),
      ),
    );
  }
}
