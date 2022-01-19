import 'package:funda_assignment/data/models/estate_detail/estate_detail.dart';
import 'dart:math';

class EstateDetailFakeRequests {
  final list = [
    FakeRequest(
        estateKey: '78151742-172a-4e5d-b821-a3f5a648b615',
        type: EstateTypes.buy),
    FakeRequest(
        estateKey: 'b32da5f8-10ae-4af6-9b8a-6708a8cc0c62',
        type: EstateTypes.buy),
    FakeRequest(
        estateKey: '6c5e8649-37cd-4c48-81ac-7816b181f021',
        type: EstateTypes.buy),
    FakeRequest(
        estateKey: '5bb33b95-e231-4b5a-bf4d-93077738bfb8',
        type: EstateTypes.buy),
    FakeRequest(
        estateKey: 'c4816467-f256-4168-8b5c-6b58341b4b67',
        type: EstateTypes.rent),
    FakeRequest(estateKey: 'example_for_error', type: EstateTypes.rent),
  ];
  FakeRequest getRandomRequest() {
    Random random = Random();
    return list[random.nextInt(list.length)];
  }
}

class FakeRequest {
  final String estateKey;
  final EstateTypes type;
  FakeRequest({
    required this.estateKey,
    required this.type,
  });
}
