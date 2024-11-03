import 'package:e_fran/features/presentation/widgets/sign_up/footer_sign_up.dart';
import 'package:e_fran/features/presentation/widgets/sign_up/header_sign_up.dart';
import 'package:e_fran/features/presentation/widgets/sign_up/input_email_sign_up.dart';
import 'package:e_fran/features/presentation/widgets/sign_up/input_fullname_sign_up.dart';
import 'package:e_fran/features/presentation/widgets/sign_up/input_password_sign_up.dart';
import 'package:e_fran/features/presentation/widgets/sign_up/input_username_sign_up.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderSignUp(),
              const InputFullnameSignUp(),
              const InputUsernameSignUp(),
              const InputEmailSignUp(),
              const InputPasswordSignUp(),
              Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 30),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/home',
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const FooterSignUp(),
            ],
          ),
        ),
      ),
    );
  }
}
