import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobile/store/messages_store.dart';
import 'package:mobile/websocket.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final MessagesStore messagesStore = MessagesStore();
  @override
  Widget build(BuildContext context) {
    final WebsocketConnection websocket =
        new WebsocketConnection(messagesStore);

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Text('Working'),
          Observer(
            builder: (_) => Column(
              children: messagesStore.messages.map((e) => Text(e)).toList(),
            ),
          )

          // Observer(
          //   builder: (context) => ListView.builder(
          //     itemBuilder: (_, idx) => Text(messagesStore.messages[idx]),
          //     itemCount: messagesStore.messages.length,
          //   ),
          // )
        ],
      ),
    ));
  }
}
