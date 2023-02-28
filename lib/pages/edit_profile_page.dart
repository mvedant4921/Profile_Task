import 'dart:io';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:logintask/model/user.dart';
import 'package:logintask/pages/profile_page.dart';
import 'package:logintask/utils/user_preferences.dart';
import 'package:logintask/widget/appbar_widget.dart';
import 'package:logintask/widget/button_widget.dart';
import 'package:logintask/widget/profile_widget.dart';
import 'package:logintask/widget/textfield_widget.dart';
import 'package:path/path.dart';


class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;
  TextEditingController nameController=TextEditingController();

  @override
  Widget build(BuildContext context) => ThemeSwitchingArea(
        child: Builder(
          builder: (context) => Scaffold(
            appBar: buildAppBar(context),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 32),
              physics: BouncingScrollPhysics(),
              children: [
                ProfileWidget(
                  imagePath: user.imagePath,
                  // isEdit: true,
                  onClicked: () async {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Full Name',
                  text: user.name,
                  onChanged: (Name) {
                    
                  },
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Email',
                  text: user.email,
                  onChanged: (email) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'About',
                  text: user.about,
                  maxLines: 5,
                  onChanged: (about) {},
                ),
                const SizedBox(height:40),
 ButtonWidget(
        text: 'Save',
        onClicked: () {
   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );


        },
      ),
                // buildSaveButton(),
              ],
            ),
          ),
        ),
      );
      // Widget buildSaveButton() =>
}
