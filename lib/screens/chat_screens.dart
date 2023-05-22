import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eos_chatting/chatting/chat/message.dart';
import 'package:eos_chatting/chatting/chat/new_message.dart';
import 'package:eos_chatting/config/palette.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:eos_chatting/screens/main_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _authentication = FirebaseAuth.instance;
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        appBar: AppBar(
          backgroundColor: Palette.eosColor,
          title: Text('Chat screen'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: () {
                _authentication.signOut();
              },
            )
          ],
        ),
        body: Container(
          // TODO : 아래 틀에 맞게 message와 new message를 알맞게 배치해 보세요! Message는 Expanded로 감싸주세요!
          child: Column(
            children: [
              Expanded(
                child: Messages(),
              ),
              NewMessage()
            ],
          ),
        ));
  }
}
