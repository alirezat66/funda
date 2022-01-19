import 'package:flutter/material.dart';
import 'package:funda_assignment/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShowMoreButtonWidget extends HookConsumerWidget {
  final VoidCallback onPressed;
  const ShowMoreButtonWidget({Key? key, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = ref.watch(brightnessProvider.state);
    return Container(
      width: MediaQuery.of(context).size.width,
      color: brightness.state == Brightness.light
          ? Colors.white.withOpacity(0.9)
          : Colors.black.withOpacity(0.9),
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: const EdgeInsets.all(8),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: const Text('show more')),
    );
  }
}
