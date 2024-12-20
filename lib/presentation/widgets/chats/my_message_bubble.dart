import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

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
          child: const Padding(padding:  EdgeInsets.all(10),
          child: Text("Lorem ipsum dolor sit amet, mollit anim id est laborum "),
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}