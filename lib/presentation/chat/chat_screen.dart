import 'package:flutter/material.dart';

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
    return SafeArea(
      child: Column(
        children: [
            Expanded(child:
             ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
              
              return Text('Index en ${index}');
            },
            )
            )
        ],
      ),
    );
  }
}