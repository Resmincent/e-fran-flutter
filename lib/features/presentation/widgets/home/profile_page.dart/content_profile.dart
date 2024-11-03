import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class ContentProfile extends StatelessWidget {
  const ContentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    Widget menutItem(String text) {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: subtitleTestStyle.copyWith(
                fontSize: 13,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: primaryText,
            ),
          ],
        ),
      );
    }

    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: bgColor1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Account',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/edit_profile');
              },
              child: menutItem('Edit Profile'),
            ),
            menutItem('Your Orders'),
            menutItem('Help'),
            const SizedBox(
              height: 30,
            ),
            Text(
              'General',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            menutItem('Privacy & Policy'),
            menutItem('Term of Service'),
            menutItem('Rate App'),
          ],
        ),
      ),
    );
  }
}
