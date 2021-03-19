import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_actions.freezed.dart';

@freezed
abstract class AppActions with _$AppActions {
  const factory AppActions.listenStartButtonTapped() = ListenStartButtonTapped;
  const factory AppActions.nfcListened(String cardId, String content) =
      NfcListened;
}
