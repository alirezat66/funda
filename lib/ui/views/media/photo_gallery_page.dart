import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:funda_assignment/data/models/estate_detail/media.dart';

class PhotoGalleryPage extends HookWidget {
  final List<Media> images;
  const PhotoGalleryPage(this.images, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController();
    final _currentIndex = useState(0);
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('${_currentIndex.value + 1} / ${images.length}'),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: _getImages(),
                onPageChanged: (val) {
                  _currentIndex.value = val;
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ));
  }

  List<Widget> _getImages() {
    List<Widget> pages = [];
    for (int i = 0; i < images.length; i++) {
      pages.add(Center(
        child: Image.network(
          images[i].mediaItems![images[i].mediaItems!.length - 1].url!,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
      ));
    }
    return pages;
  }
}
