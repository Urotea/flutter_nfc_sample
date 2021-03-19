import 'package:nfc_sample/state/nfc_state.dart';

import '../actions/app_actions.dart';

NfcState nfcReducer(NfcState state, dynamic action) {
  final appActions = action as AppActions;

  final newState = appActions.map(
    nfcListened: (NfcListened value) => state.copyWith(cardId: value.cardId, content: value.content, listened: false),
    listenStartButtonTapped: (ListenStartButtonTapped value) => state.copyWith(listened: true),
  );

  return newState;
}
