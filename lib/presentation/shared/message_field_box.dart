import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onValue ;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
  final textController = TextEditingController();
  final focusNode = FocusNode();

  final outlineborder = UnderlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(40)
  );

  final inputDecoration  =   InputDecoration(
    hintText: 'Tu mensaje termina con "?',
        enabledBorder: outlineborder,
        filled: true ,
          suffixIcon:  IconButton(
          onPressed:  () {
            final textvalue = textController.value.text;
            onValue(textvalue);
            textController.clear();
          }, 
          icon: const Icon( Icons.send_outlined)
      ),
      );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      controller: textController,
      decoration: inputDecoration,
      focusNode: focusNode,
      onFieldSubmitted: (value) {
        
        onValue(value);
        textController.clear();
        focusNode.requestFocus();
      },
      
    );
  }
}