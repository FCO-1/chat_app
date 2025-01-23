import 'package:flutter/material.dart';
import 'package:flutter_application_3/domain/entities/message.dart';
import 'package:flutter_application_3/presentation/providers/chat_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_3/presentation/shared/message_field_box.dart';
import 'package:flutter_application_3/presentation/widgets/chats/her_message_bubble.dart';
import 'package:flutter_application_3/presentation/widgets/chats/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Padding(padding:  EdgeInsets.all(10.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://www.okchicas.com/wp-content/uploads/2019/07/Los-aristogatos-4.jpg'),
        ),
        ),
    
        title: const Text('Michi'),
        centerTitle: false,
        ),
        body: _ChatView()
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProviderState = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
              Expanded(child:
               ListView.builder(
                itemCount: chatProviderState.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProviderState.messageList[index];
                  return (message.fromWho == FromWho.hers)
                  ? HerMessageBubble()
                  : MyMessageBubble();
              },
              )
              ),
              const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}