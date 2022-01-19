import 'package:funda_assignment/data/models/estate_detail/estate_detail.dart';
import 'package:funda_assignment/data/models/estate_state.dart';
import 'package:funda_assignment/data/repository/estate_detail_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final estateStateNotifireProvider =
    StateNotifierProvider<EstateProvider, EstateState>((ref) {
  return EstateProvider(ref.read);
});

class EstateProvider extends StateNotifier<EstateState> {
  final Reader _reader;

  EstateProvider(this._reader) : super(const EstateState.loading());
  late final EstateDetailRepository _estateRepository =
      _reader(estateRepositoryProvider);
  Future<void> getEstateDetail(String estateKey, EstateTypes type) async {
    state = const EstateState.loading();
    state = await _estateRepository.getEstateDetail(estateKey, type);
  }
}
