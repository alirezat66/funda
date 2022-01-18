import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:funda_assignment/configuration/constants.dart';
import 'package:funda_assignment/data/models/estate_detail/estate_detail.dart';
import 'package:funda_assignment/data/models/estate_state.dart';
import 'package:funda_assignment/data/remote/funda_dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_error.dart';

abstract class IEstateDetailRepository {
  Future<EstateState> getEstateDetail(String estateKey, EstateTypes type);
}

final estateRepositoryProvider =
    Provider((ref) => EstateDetailRepository(ref.read));

class EstateDetailRepository implements IEstateDetailRepository {
  final Reader _reader;
  EstateDetailRepository(this._reader);
  late final _api = _reader(dioProvider);

  @override
  Future<EstateState> getEstateDetail(
      String estateKey, EstateTypes type) async {
    final apiKey = Constants.of().apiKey;
    debugPrint(apiKey);
    final typeString = type == EstateTypes.rent ? 'huur' : 'koop';
    try {
      debugPrint('we are in get estate detail repository');
      final response = await _api.get('detail/$apiKey/$typeString/$estateKey');
      EstateDetail detail = EstateDetail.fromMap(response.data);
      debugPrint(detail.toString());
      return EstateState.loaded(estate: detail);
    } catch (e) {
      return EstateState.failed(error: AppError(e as Exception));
    }
  }
}
