import 'dart:async';

import 'package:mobile/store/messages_store.dart';
import 'package:websocket_manager/websocket_manager.dart';

class WebsocketConnection {
  final socket = WebsocketManager('ws://localhost:3000/');
  MessagesStore messagesStore;

  WebsocketConnection(MessagesStore messagesStore) {
    this.messagesStore = messagesStore;
    socket.connect().then((value) {
      print('val');
      this._wireReceiveMessageToStore();
      this._wireSendMessage();
    });
  }

  _wireSendMessage() {
    Timer.periodic(Duration(seconds: 3), (t) => socket.send('message'));
  }

  _wireReceiveMessageToStore() {
    socket.onMessage((msg) => messagesStore.addMessage(msg));
  }
}
