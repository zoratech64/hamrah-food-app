import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_view_state.freezed.dart';

@freezed
abstract class PageViewState with _$PageViewState {
  factory PageViewState({
    @Default(0) int currentIndex,
    @Default(0) int length,
  }) = _PageViewState;
}
