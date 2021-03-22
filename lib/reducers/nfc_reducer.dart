import 'package:nfc_sample/state/nfc_state.dart';

import '../actions/app_actions.dart';

NfcState nfcReducer(NfcState state, dynamic action) {
  if (action is AppActions) {
    return _AppActionReducer(state, action);
  }

  throw UnsupportedError("reducerに定義外のActionが発行されました。");
}

NfcState _AppActionReducer(NfcState state, AppActions action) {
  final newState = action.map(
    listenStartButtonTapped: (ListenStartButtonTapped value) =>
        state.copyWith(listening: true),
    nfcListened: (NfcListened value) => state.copyWith(
        cardId: value.cardId, content: value.content, listening: false),
  );

  return newState;
}
