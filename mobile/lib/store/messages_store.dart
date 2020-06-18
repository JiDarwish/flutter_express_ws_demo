import 'package:mobx/mobx.dart';

part 'messages_store.g.dart';

class MessagesStore = _MessagesStore with _$MessagesStore;

abstract class _MessagesStore with Store {
  @observable
  List messages = ObservableList<String>.of(['elements']);

  @action
  void addMessage(String msg) {
    messages.add(msg);
  }
}

final MessagesStore messagesStore = MessagesStore();
