import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback onPressed;
  final double size;

  const IconTextWidget(
      {Key? key,
      required this.iconData,
      required this.text,
      this.size = 36,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Icon(iconData,
                color: Theme.of(context).colorScheme.secondary, size: size),
            const SizedBox(
              height: 8,
            ),
            Text(text, style: Theme.of(context).textTheme.button)
          ],
        ),
      ),
    ));
  }
}
