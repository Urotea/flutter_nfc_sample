import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nfc_sample/state/pages.dart';

part 'nfc_state.freezed.dart';

@freezed
abstract class NfcState with _$NfcState {
  factory NfcState({
    @Default("") String cardId,
    @Default("") String content,
    @Default(Pages.MAIN) Pages page,
    @Default(false) bool listening,
  }) = _NfcState;
}
