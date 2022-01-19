import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:funda_assignment/data/models/estate_detail/media.dart';
import 'package:panorama/panorama.dart';

// I see that you use krpano for showing 3d images and panoramas, I read their document but I can't find
// good way to using in flutter, I think this take more time
class PanoramaPage extends HookWidget {
  final List<Media> panoramaImages;
  const PanoramaPage(this.panoramaImages, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedImage = useState(panoramaImages[0].mediaItems![2].url);
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Center(
            child: Panorama(
              child: Image.network(
                _selectedImage.value!,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ElevatedButton(
                    onPressed: () {
                      _selectedImage.value =
                          panoramaImages[index].mediaItems![2].url;
                    },
                    child: Text(panoramaImages[index].mediaName!));
              },
              itemCount: panoramaImages.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
