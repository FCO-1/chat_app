import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  const MessageFieldBox({super.key});

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
            print('Valor registrado $textvalue');
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
        
        print('Valor registrado $value');
        textController.clear();
        focusNode.requestFocus();
      },
      
    );
  }
}