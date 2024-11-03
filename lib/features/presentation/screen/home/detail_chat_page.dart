import 'package:e_fran/features/presentation/widgets/home/chat_page/chat_input.dart';
import 'package:e_fran/features/presentation/widgets/home/chat_page/detail_chat_bubble/content_chat_buble.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: bgColor3,
          centerTitle: false,
          title: Container(
            height: 50,
            child: Row(
              children: [
                Image.asset('assets/img/logo_online.png'),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    Text(
                      'Online',
                      style: subtitleTestStyle.copyWith(
                        fontWeight: light,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const ChatInput(),
      body: const ContentChatBuble(),
    );
  }
}
