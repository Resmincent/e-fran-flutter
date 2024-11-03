import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class FooterSignUp extends StatelessWidget {
  const FooterSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account?",
            style: subtitleTestStyle.copyWith(
              fontSize: 12,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            child: Text(
              'Sign In',
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
