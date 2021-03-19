import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';
import 'package:nfc_sample/actions/app_actions.dart';
import 'package:nfc_sample/state/nfc_state.dart';
import 'package:redux/redux.dart';

void nfcMiddleware(Store<NfcState> store, dynamic action, NextDispatcher next) {
  // ログを出す
  print(action);

  if (action is NfcListened) {
    next(action);
    return;
  }

  if (action is ListenStartButtonTapped) {
    if (store.state.listened) {
      return;
    }
    next(action);
    FlutterNfcReader.read().then((value) =>
        store.dispatch(AppActions.nfcListened(value.id, value.content)));
  }
}
