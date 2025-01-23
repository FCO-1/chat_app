import 'package:flutter/material.dart';
import 'package:flutter_application_3/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  List<Message> messageList = [
    Message(textDat: "Hola gatota", fromWho: FromWho.me),
    Message(textDat: "Ya regresaste de cuetzalan?", fromWho: FromWho.me)
  ];

  Future<void>  sendMessage(String text) async {
    final newMessage =  Message(textDat: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    notifyListeners();
  }
}