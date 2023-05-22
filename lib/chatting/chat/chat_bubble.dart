import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(this.message, this.isMe, this.userName, {super.key});

  final String message;
  final bool isMe;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Padding(
          padding:
              isMe ? EdgeInsets.only(right: 5.0) : EdgeInsets.only(left: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isMe)
                Padding(
                  // TODO 5: 내가 아닐때는 닉네임이 위에 있어야겠죠? 왼쪽에 padding 10, 색은 grey
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    userName,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              Container(
                decoration: BoxDecoration(
                  color: isMe ? Colors.lightGreen : Colors.black12,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: isMe ? Radius.circular(10.0) : Radius.zero,
                      bottomRight: isMe ? Radius.zero : Radius.circular(10.0)),
                ),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Text(
                  message,
                  style: TextStyle(color: isMe ? Colors.white : Colors.black),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
