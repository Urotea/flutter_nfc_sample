import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';
import 'package:nfc_sample/actions/app_actions.dart';
import 'package:nfc_sample/state/nfc_state.dart';
import 'package:redux/redux.dart';

class NavigationMiddleware extends MiddlewareClass<NfcState> {
  final GlobalKey<NavigatorState> _navigatorKey;

  NavigationMiddleware(this._navigatorKey);

  @override
  void call(Store<NfcState> store, dynamic action, NextDispatcher next) {
    if (action is NfcListened) {
      // if(store.state.listening) {
      //   Navigator.of(this._navigatorKey.currentContext).pop();
      // }
      next(action);
      return;
    }

    if (action is ListenStartButtonTapped) {
      next(action);

      FlutterNfcReader.read().then((value) =>
          store.dispatch(AppActions.nfcListened(value.id, value.content)));
      showDialog(
        context: this._navigatorKey.currentContext,
        barrierDismissible: false,
        builder: (context) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "NFC認識中",
                style: Theme.of(this._navigatorKey.currentContext)
                    .textTheme
                    .apply(bodyColor: Colors.white, displayColor: Colors.white)
                    .headline4,
              ),
              CircularProgressIndicator(),
            ],
          ),
        ),
      );
    }
  }
}
