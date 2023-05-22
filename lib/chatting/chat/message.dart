import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eos_chatting/chatting/chat/chat_bubble.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('chat')
            .orderBy('time', descending: true)
            .snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          final docs = snapshot.data!.docs;
          return ListView.builder(
            reverse: true,
            itemCount: docs.length,
            itemBuilder: (context, index) {
              return ChatBubble(docs[index]['text'],
                  docs[index]['userId'] == user!.uid, docs[index]['userName']);
            },
          );
        });
  }
}
