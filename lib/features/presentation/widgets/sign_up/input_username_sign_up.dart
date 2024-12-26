import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputUsernameSignUp extends StatelessWidget {
  final TextEditingController controller;

  const InputUsernameSignUp({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: bgColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/svg/username_icon.svg',
                    width: 17,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: subtitleTestStyle,
                      controller: controller,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your User Name',
                        hintStyle: secondaryTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
