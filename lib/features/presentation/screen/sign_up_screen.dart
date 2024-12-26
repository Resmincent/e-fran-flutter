import 'package:e_fran/features/presentation/providers/auth/auth_provider.dart';
import 'package:e_fran/features/presentation/widgets/sign_up/footer_sign_up.dart';
import 'package:e_fran/features/presentation/widgets/sign_up/header_sign_up.dart';
import 'package:e_fran/features/presentation/widgets/sign_up/input_email_sign_up.dart';
import 'package:e_fran/features/presentation/widgets/sign_up/input_fullname_sign_up.dart';
import 'package:e_fran/features/presentation/widgets/sign_up/input_password_sign_up.dart';
import 'package:e_fran/features/presentation/widgets/sign_up/input_username_sign_up.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    usernameController.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    handleSignUp() async {
      if (nameController.text.isEmpty ||
          usernameController.text.isEmpty ||
          emailController.text.isEmpty ||
          passwordController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: const Text(
              'Semua field harus diisi!',
              textAlign: TextAlign.center,
            ),
          ),
        );
        return;
      }

      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
          .hasMatch(emailController.text)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: const Text(
              'Format email salah!',
              textAlign: TextAlign.center,
            ),
          ),
        );
        return;
      }

      if (passwordController.text.length < 8) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: const Text(
              'Password minimal 8 karakter!',
              textAlign: TextAlign.center,
            ),
          ),
        );
        return;
      }

      setState(() {
        isLoading = true;
      });

      try {
        final authProvider = Provider.of<AuthProvider>(context, listen: false);

        final success = await authProvider.register(
          name: nameController.text,
          username: usernameController.text,
          email: emailController.text,
          password: passwordController.text,
        );

        if (success) {
          Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
        } else {
          throw Exception('Gagal Register');
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: const Text(
              'Gagal Register!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    }

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
              InputFullnameSignUp(controller: nameController),
              InputUsernameSignUp(controller: usernameController),
              InputEmailSignUp(controller: emailController),
              InputPasswordSignUp(controller: passwordController),
              Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 30),
                child: TextButton(
                  onPressed: isLoading ? null : handleSignUp,
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : Text(
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
