import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:funda_assignment/ui/widgets/horizontal_icon_text_widget.dart';

class EstateInfoWidget extends StatelessWidget {
  final String address;
  final String detailAddress;
  final int resedentialArea;
  final int plotArea;
  final int bedRooms;
  final String price;
  const EstateInfoWidget(
      {Key? key,
      required this.address,
      required this.detailAddress,
      required this.resedentialArea,
      required this.plotArea,
      required this.bedRooms,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          address,
          style: Theme.of(context).textTheme.headline2,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(detailAddress, style: Theme.of(context).textTheme.headline4),
        const SizedBox(
          height: 12,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                HorizontalIconTextWidget(
                    iconPath: 'images/resedential_icon.svg',
                    text: '$resedentialArea'),
                const SizedBox(
                  width: 2,
                ),
                Text('M2',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontFeatures: [
                        const FontFeature.enable('sups'),
                      ],
                    )),
              ],
            ),
            const SizedBox(
              width: 12,
            ),
            Row(
              children: [
                HorizontalIconTextWidget(
                    iconPath: 'images/plot_icon.svg', text: '$plotArea'),
                const SizedBox(
                  width: 2,
                ),
                Text('M2',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontFeatures: [
                        const FontFeature.enable('sups'),
                      ],
                    )),
              ],
            ),
            const SizedBox(
              width: 12,
            ),
            HorizontalIconTextWidget(
                iconPath: 'images/bed_icon.svg', text: '$bedRooms')
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Text(price, style: Theme.of(context).textTheme.headline6)
      ],
    );
  }
}
