import 'package:e_fran/features/presentation/widgets/home/chat_page/detail_chat_bubble/add_to_cart.dart';
import 'package:e_fran/features/presentation/widgets/home/chat_page/detail_chat_bubble/button_add_to_cart.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    this.isSender = false,
    this.text = '',
    this.hasProduct = false,
  });
  final String text;
  final bool isSender;
  final bool hasProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct
              ?
              //Detail Product Cart
              Container(
                  width: 230,
                  height: 155,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: isSender
                        ? const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          )
                        : const BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                    color: bgColor3,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: 231,
                      child: const Column(
                        children: [
                          AddToCart(),
                          SizedBox(
                            height: 20,
                          ),
                          ButtonAddToCart()
                        ],
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
          // Chat Bubble
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.6),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: isSender
                        ? const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          )
                        : const BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                    color: bgColor3,
                  ),
                  child: Text(
                    text,
                    style: primaryTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
