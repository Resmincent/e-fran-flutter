import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class HeaderSignIn extends StatelessWidget {
  const HeaderSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Sign In to Continue',
            style: subtitleTestStyle,
          )
        ],
      ),
    );
  }
}
