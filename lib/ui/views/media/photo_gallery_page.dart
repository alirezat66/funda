import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// I used HookedWidget and useState to handle simple states like this
// darkmode and lightmode and etc
// after I used this images it sounds that the images has not good quality but
// actually I decided to works on more important parts and I did'nt know among the
// media photos which category works for images and wich scale is good for showing
// so ....
class PhotoGalleryPage extends HookWidget {
  final List<dynamic> images;
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
          images[i].toString(),
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
      ));
    }
    return pages;
  }
}
