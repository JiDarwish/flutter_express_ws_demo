// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MessagesStore on _MessagesStore, Store {
  final _$messagesAtom = Atom(name: '_MessagesStore.messages');

  @override
  List get messages {
    _$messagesAtom.context.enforceReadPolicy(_$messagesAtom);
    _$messagesAtom.reportObserved();
    return super.messages;
  }

  @override
  set messages(List value) {
    _$messagesAtom.context.conditionallyRunInAction(() {
      super.messages = value;
      _$messagesAtom.reportChanged();
    }, _$messagesAtom, name: '${_$messagesAtom.name}_set');
  }

  final _$_MessagesStoreActionController =
      ActionController(name: '_MessagesStore');

  @override
  void addMessage(String msg) {
    final _$actionInfo = _$_MessagesStoreActionController.startAction();
    try {
      return super.addMessage(msg);
    } finally {
      _$_MessagesStoreActionController.endAction(_$actionInfo);
    }
  }
}
