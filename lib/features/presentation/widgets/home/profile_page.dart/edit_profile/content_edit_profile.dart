import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class ContentEditProfile extends StatelessWidget {
  const ContentEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    //Field input name
    Widget nameInput() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: subtitleTestStyle,
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'Ifran Hilmi Azhara',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: secondaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    //Field input username
    Widget usernameInput() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: subtitleTestStyle,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: '@example',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: secondaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    //Field email address
    Widget emailAddressInput() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: subtitleTestStyle,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: '@vrann@example.com',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: secondaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: defaultMargin),
            decoration: BoxDecoration(
              color: primaryColor,
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage('assets/img/foto_profile.png'),
              ),
            ),
          ),
          nameInput(),
          usernameInput(),
          emailAddressInput(),
        ],
      ),
    );
  }
}
