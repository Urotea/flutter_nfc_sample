import 'package:freezed_annotation/freezed_annotation.dart';

part 'nfc_state.freezed.dart';

@freezed
abstract class NfcState with _$NfcState {
  factory NfcState({
    @Default("") String cardId,
    @Default("") String content,
    @Default(false) bool listened,
  }) = _NfcState;
}
