import 'package:e_fran/features/presentation/widgets/home/chat_page/content_chat_page.dart';
// import 'package:e_fran/features/presentation/widgets/home/chat_page/empty_chat.dart';
import 'package:e_fran/features/presentation/widgets/home/chat_page/header_chat_page.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderChatPage(),
        ContentChatPage(),
        // EmptyChat(),
      ],
    );
  }
}
