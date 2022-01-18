import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HorizontalIconTextWidget extends StatelessWidget {
  final String iconPath;
  final String text;
  const HorizontalIconTextWidget(
      {Key? key, required this.iconPath, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        SvgPicture.asset(iconPath,
            color: Colors.black87, width: 16, height: 16),
        Text(text, style: Theme.of(context).textTheme.bodyText1)
      ],
    );
  }
}
