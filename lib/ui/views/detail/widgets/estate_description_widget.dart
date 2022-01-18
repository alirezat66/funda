import 'package:flutter/material.dart';
import 'package:funda_assignment/ui/widgets/expandable_text.dart';

class EstateDescriptionWidget extends StatelessWidget {
  final String description;
  const EstateDescriptionWidget({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(
          height: 8,
        ),
        ExpandableText(text: description),
      ],
    );
  }
}
