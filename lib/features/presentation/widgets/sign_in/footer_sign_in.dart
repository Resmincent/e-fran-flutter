import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class FooterSignIn extends StatelessWidget {
  const FooterSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?",
            style: subtitleTestStyle.copyWith(
              fontSize: 12,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              'Sign Up',
              style: maroonTextStyle.copyWith(
                fontSize: 12,
                fontWeight: bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
