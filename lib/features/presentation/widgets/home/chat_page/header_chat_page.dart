import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class HeaderChatPage extends StatelessWidget {
  const HeaderChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor3,
      centerTitle: true,
      title: Text(
        'Message Support',
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }
}
