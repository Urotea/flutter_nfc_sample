import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nfc_sample/pages/main_page.dart';
import 'package:nfc_sample/reducers/nfc_reducer.dart';
import 'package:nfc_sample/state/nfc_state.dart';
import 'package:nfc_sample/state/pages.dart';
import 'package:redux/redux.dart';

import 'middleware/navigation_middleware.dart';
import 'middleware/nfc_middleware.dart';

void main() => runApp(PageControllerWidget());

@immutable
class PageControllerWidget extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();
  final _themeData = ThemeData(primarySwatch: Colors.blue);
  Store<NfcState> _store;
  List<Page<dynamic>> _pages;

  PageControllerWidget({Key key}) : super(key: key) {
    this._store = Store<NfcState>(
      nfcReducer,
      initialState: NfcState(),
      middleware: [
        nfcMiddleware,
        NavigationMiddleware(_navigatorKey),
      ],
    );
    this._pages = [
      MaterialPage(
        child: MainPage(
          title: "NFC_APP",
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) => StoreProvider<NfcState>(
        store: this._store,
        child: StoreConnector<NfcState, Pages>(
          converter: (store) => Pages.MAIN,
          builder: (BuildContext context, Pages page) => WillPopScope(
            onWillPop: () async =>
                !await this._navigatorKey.currentState.maybePop(),
            child: MaterialApp(
              theme: this._themeData,
              home: Navigator(
                key: this._navigatorKey,
                pages: this._pages,
                onPopPage: (route, result) => this._onPopPage(route, result),
              ),
            ),
          ),
        ),
      );

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    return route.didPop(result);
  }
}
