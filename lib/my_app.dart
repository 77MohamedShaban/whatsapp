import 'package:flutter/material.dart';
import 'chat_screen.dart';

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
