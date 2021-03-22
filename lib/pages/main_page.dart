import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nfc_sample/actions/app_actions.dart';
import 'package:nfc_sample/state/nfc_state.dart';

class MainPage extends StatelessWidget {
  MainPage({Key key, this.title}) : super(key: key);
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
      ),
    );
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
