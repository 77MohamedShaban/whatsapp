import 'package:flutter/material.dart';
import 'chat/screen/chat_screen.dart';
void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "whatsapp",
      debugShowCheckedModeBanner: false,
      home:ChatScreen() ,
    );
  }
}