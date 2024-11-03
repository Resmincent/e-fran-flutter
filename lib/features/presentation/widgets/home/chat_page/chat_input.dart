import 'package:e_fran/features/presentation/widgets/home/chat_page/detail_chat_bubble/product_preview_chat.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductPreviewChat(),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: bgColor2,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Type Message...',
                          hintStyle: subtitleTestStyle),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/img/send_button.png',
                width: 45,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
