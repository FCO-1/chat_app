import 'package:flutter/material.dart';
import 'package:flutter_application_3/config/theme/app_theme.dart';
import 'package:flutter_application_3/presentation/chat/chat_screen.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: AppTheme(selectedColor: 2).theme(),
    title: 'App 3',
    home: const ChatScreen()
    );
  }
  
}