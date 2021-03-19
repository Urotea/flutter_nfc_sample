import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nfc_sample/actions/app_actions.dart';
import 'package:nfc_sample/reducers/nfc_reducer.dart';
import 'package:nfc_sample/state/nfc_state.dart';
import 'package:redux/redux.dart';

import 'middleware/nfc_middleware.dart';

void main() {
  final store = Store<NfcState>(
    nfcReducer,
    initialState: NfcState(),
    middleware: [nfcMiddleware],
  );
  runApp(MyApp(store: store, title: "NFC_APP"));
}

class MyApp extends StatelessWidget {
  final Store<NfcState> store;
  final String title;

  MyApp({Key key, @required this.store, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<NfcState>(
      // Pass the store to the StoreProvider. Any ancestor `StoreConnector`
      // Widgets will find and use this value as the `Store`.
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: this.title),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(this.title),
        ),
        body: StoreConnector<NfcState, _BodyArgs>(
          converter: (store) => _BodyArgs(
            id: store.state.cardId,
            content: store.state.content,
          ),
          builder: (context, arg) => Center(
            child: Column(
              children: [
                Text("card id: ${arg.id}",
                    style: Theme.of(context).textTheme.headline4),
                Text("card content: ${arg.content}",
                    style: Theme.of(context).textTheme.headline4),
              ],
            ),
          ),
        ),
        floatingActionButton: StoreConnector<NfcState, Function()>(
          converter: (store) =>
              () => store.dispatch(AppActions.listenStartButtonTapped()),
          builder: (context, arg) => FloatingActionButton(
            onPressed: arg,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ));
  }
}

class _BodyArgs extends Equatable {
  final String id;
  final String content;

  _BodyArgs({@required this.id, @required this.content})
      : assert(id != null),
        assert(content != null);

  @override
  List<Object> get props => [id, content];
}
