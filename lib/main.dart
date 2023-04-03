import 'package:eos_chatting/firebase_options.dart';
import 'package:eos_chatting/screens/chat_screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:eos_chatting/screens/main_screen.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: ChatScreen()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chatting App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginSignUpScreen());
  }
}
