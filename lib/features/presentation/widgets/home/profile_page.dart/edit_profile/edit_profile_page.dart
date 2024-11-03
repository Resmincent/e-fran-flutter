import 'package:e_fran/features/presentation/widgets/home/profile_page.dart/edit_profile/content_edit_profile.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor3,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: primaryText,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: primaryTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check,
              color: primaryColor,
            ),
          )
        ],
      ),
      backgroundColor: bgColor1,
      body: const ContentEditProfile(),
      resizeToAvoidBottomInset: false,
    );
  }
}
