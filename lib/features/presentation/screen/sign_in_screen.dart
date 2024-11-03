import 'package:e_fran/features/presentation/widgets/sign_in/footer_sign_in.dart';
import 'package:e_fran/features/presentation/widgets/sign_in/header_sign_in.dart';
import 'package:e_fran/features/presentation/widgets/sign_in/input_email_address_sign_in.dart';
import 'package:e_fran/features/presentation/widgets/sign_in/input_password_sign_in.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
              const HeaderSignIn(),
              const InputEmailAddressSignIn(),
              const InputPasswordSignIn(),
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
                    'Sign In',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const FooterSignIn(),
            ],
          ),
        ),
      ),
    );
  }
}
