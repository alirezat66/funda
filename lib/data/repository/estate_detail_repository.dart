import 'package:flutter/foundation.dart';
import 'package:funda_assignment/configuration/constants.dart';
import 'package:funda_assignment/data/models/estate_detail/estate_detail.dart';
import 'package:funda_assignment/data/models/estate_state.dart';
import 'package:funda_assignment/data/client/funda_dio.dart';
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
    final typeString = type == EstateTypes.rent ? 'huur' : 'koop';
    try {
      final response = await _api.get('detail/$apiKey/$typeString/$estateKey');
      EstateDetail detail = await compute(_computeFetchDetail, response.data);
      return EstateState.loaded(estate: detail);
    } catch (e) {
      return EstateState.failed(error: AppError.fromException(e as Exception));
    }
  }
}

Future<EstateDetail> _computeFetchDetail(final dynamic data) async {
  return EstateDetail.fromMap(data);
}
