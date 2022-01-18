import 'package:flutter/foundation.dart';

// I know, I know, You didn't mentioned this part but when I developed this part
// I wanted to show my knowledge about working on both develop and production mode
// becuase in big scale companies working on one backend made critical problems.
enum Flavor { development, production }

@immutable
class Constants {
  const Constants._({
    required this.endpoint,
    required this.apiKey,
  });

  factory Constants.of() {
    //there is a switch part for checking the flavor but in this test project I config it
    // manualy to development
    // if I want change it, I have to create provider state for it because this data should not be
    // dependence.
    const flavor = Flavor.development;
    switch (flavor) {
      case Flavor.development:
        return Constants._dev();
      case Flavor.production:
      default:
        return Constants._prd();
    }
  }

  factory Constants._dev() {
    return const Constants._(
      endpoint: 'http://partnerapi.funda.nl/feeds/Aanbod.svc/json/',
      apiKey: 'ac1b0b1572524640a0ecc54de453ea9f',
    );
  }

  factory Constants._prd() {
    return const Constants._(
      endpoint: 'https://example.nl',
      apiKey: 'example',
    );
  }

  static late final Constants instance = Constants.of();

  final String endpoint;
  final String apiKey;
}
