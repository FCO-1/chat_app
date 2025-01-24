import 'package:flutter/material.dart';
import 'package:flutter_application_3/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController  chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(textDat: "Hola gatota", fromWho: FromWho.me),
    Message(textDat: "Ya regresaste de cuetzalan?", fromWho: FromWho.me),
    Message(textDat: "mi michi?", fromWho: FromWho.me)
  ];

  Future<void>  sendMessage(String text) async {
    if(text.isEmpty) return;
    final newMessage =  Message(textDat: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    notifyListeners();
    moveScrollToBotton();
  }

  void moveScrollToBotton ()
  async{
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
    chatScrollController.position.maxScrollExtent, 
    duration: const Duration(milliseconds: 300), 
    curve: Curves.easeInOutCirc
    );
  }
}