import 'package:flutter/material.dart';
import 'package:funda_assignment/ui/widgets/brightness_button.dart';

class FundaAppBar extends AppBar {
  FundaAppBar({
    Key? key,
    final Widget? leading,
  }) : super(
          key: key,
          leading: leading,
          actions: [
            const BrightnessButton(),
          ],
        );
}
