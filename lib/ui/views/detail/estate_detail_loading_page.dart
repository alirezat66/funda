import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class EstateDetailLoadingPage extends StatelessWidget {
  const EstateDetailLoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SkeletonAvatar(
          style: SkeletonAvatarStyle(
            width: double.infinity,
            height: 200,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SkeletonParagraph(
          style: SkeletonParagraphStyle(
              lines: 20,
              spacing: 8,
              lineStyle: SkeletonLineStyle(
                randomLength: true,
                height: 8,
                borderRadius: BorderRadius.circular(8),
                minLength: MediaQuery.of(context).size.width / 2,
                maxLength: MediaQuery.of(context).size.width / 1,
              )),
        )
      ],
    );
  }
}
