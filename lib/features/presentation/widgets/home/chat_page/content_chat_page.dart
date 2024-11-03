import 'package:e_fran/features/presentation/widgets/home/chat_page/chat_tile.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class ContentChatPage extends StatelessWidget {
  const ContentChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: const [
            ChatTile(),
          ],
        ),
      ),
    );
  }
}
