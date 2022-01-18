import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:funda_assignment/data/app_error.dart';
import 'package:funda_assignment/data/models/estate_detail/estate_detail.dart';
part 'estate_state.freezed.dart';

@freezed
class EstateState with _$EstateState {
  const factory EstateState.loading() = Loading;
  const factory EstateState.loaded({required EstateDetail estate}) = Loaded;
  const factory EstateState.failed({required AppError error}) = Failed;
}
