import 'package:e_fran/features/presentation/widgets/home/chat_page/chat_bubble.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class ContentChatBuble extends StatelessWidget {
  const ContentChatBuble({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      children: const [
        ChatBubble(
          isSender: true,
          text: 'Hi, This item is still available?',
          hasProduct: true,
        ),
        ChatBubble(
          isSender: false,
          text: 'Good night, This item is only, available in size 42 and 43',
          hasProduct: false,
        ),
      ],
    );
  }
}
