import 'package:flutter/material.dart';
import 'package:flutter_application_3/config/theme/app_theme.dart';
import 'package:flutter_application_3/presentation/providers/chat_provider.dart';
import 'package:flutter_application_3/presentation/screens/chat/chat_screen.dart';
import 'package:provider/provider.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ChatProvider())
    ],
     child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).theme(),
      title: 'App 3',
      home: const ChatScreen()
      ),
   );
  }
  
}