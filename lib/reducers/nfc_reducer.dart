import 'package:nfc_sample/state/nfc_state.dart';

import '../actions/app_actions.dart';

NfcState nfcReducer(NfcState state, dynamic action) {
  switch(action.runtimeType) {
    case AppActions:
      return _AppActionReducer(state, action);
    default:
      throw UnsupportedError("reducerに定義外のActionが発行されました。");
  }
}

NfcState _AppActionReducer(NfcState state, AppActions action) {
  final newState = action.map(
    nfcListened: (NfcListened value) => state.copyWith(cardId: value.cardId, content: value.content, listened: false),
    listenStartButtonTapped: (ListenStartButtonTapped value) => state.copyWith(listened: true),
  );

  return newState;
}
