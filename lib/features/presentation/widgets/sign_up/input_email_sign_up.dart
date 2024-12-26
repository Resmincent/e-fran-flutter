import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputEmailSignUp extends StatelessWidget {
  final TextEditingController controller;

  const InputEmailSignUp({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
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
                    'assets/svg/email_icon.svg',
                    width: 17,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: controller,
                      style: subtitleTestStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Email Address',
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
