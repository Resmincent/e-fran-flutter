import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class HeaderSignUp extends StatelessWidget {
  const HeaderSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign Up',
            style: primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Register and Happy Shoping',
            style: subtitleTestStyle,
          )
        ],
      ),
    );
  }
}
