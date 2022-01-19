import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatelessWidget {
  final LatLng coordinate;
  const MapWidget({Key? key, required this.coordinate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Location', style: Theme.of(context).textTheme.headline3),
        const SizedBox(height: 4),
        IgnorePointer(
          child: AspectRatio(
              aspectRatio: 1,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: FlutterMap(
                      options: MapOptions(
                        enableScrollWheel: false,
                        center: coordinate,
                        zoom: 18.0,
                      ),
                      children: [
                        Center(child: Image.asset('images/map_pin_icon.png'))
                      ],
                      layers: [
                        TileLayerOptions(
                          urlTemplate:
                              "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c'],
                          fastReplace: true,
                          // Cache map data in future.
                          attributionBuilder: (_) {
                            return const Text("© OpenStreetMap contributors");
                          },
                        ),
                      ],
                      nonRotatedChildren: [
                        Transform.translate(
                          offset: const Offset(0, -50),
                          child: Center(
                            child: Image.asset(
                              'images/map_pin_icon.png',
                              width: 50,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
