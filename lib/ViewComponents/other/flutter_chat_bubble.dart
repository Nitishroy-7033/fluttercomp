import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';

class ChatBubbleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Chat Bubble")),
      body: Column(
        children: [
          ChatBubble(
            clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.all(10),
            backGroundColor: Colors.grey[200]!,
            child: const Text("Hey! How are you?", style: TextStyle(color: Colors.black)),
          ),
          ChatBubble(
            clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
            alignment: Alignment.topRight,
            margin: const EdgeInsets.all(10),
            backGroundColor: Colors.blue,
            child: const Text("I'm good, thank you!", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
