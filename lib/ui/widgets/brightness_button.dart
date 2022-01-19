import 'package:flutter/material.dart';
import 'package:funda_assignment/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BrightnessButton extends HookConsumerWidget {
  const BrightnessButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = ref.watch(brightnessProvider.state);

    return IconButton(
      icon: Icon(
        brightness.state == Brightness.dark
            ? Icons.light_mode
            : Icons.dark_mode,
      ),
      onPressed: () {
        brightness.state = brightness.state == Brightness.light
            ? Brightness.dark
            : Brightness.light;
      },
    );
  }
}
