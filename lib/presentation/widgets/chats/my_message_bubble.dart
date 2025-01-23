import 'package:flutter/material.dart';
import 'package:flutter_application_3/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
final Message message;

  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration:  BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(padding:  const EdgeInsets.all(10),
          child: Text(message.textDat),
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}