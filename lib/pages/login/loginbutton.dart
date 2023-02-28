// ignore_for_file: prefer_const_constructors

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:logintask/pages/client_screen/client_page.dart';
import 'package:logintask/pages/get_api_data/get_api.dart';
import 'package:logintask/pages/login/login_page.dart';
import 'package:logintask/pages/profile_page.dart';
import 'package:logintask/pages/client_screen/client_profile.dart';
import 'package:logintask/widget/button_widget.dart';

class LoginButtonScreen extends StatefulWidget {
  const LoginButtonScreen({super.key});

  @override
  State<LoginButtonScreen> createState() => _LoginButtonScreenState();
}

class _LoginButtonScreenState extends State<LoginButtonScreen> {
  @override
  Widget build(BuildContext context) {
      final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return ThemeSwitchingArea(
      child:
      Builder(
        builder: (context) =>
        Scaffold(
          body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Welcome',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Colors.blue.shade800),),
                    SizedBox(height: 40,),
          //           ButtonWidget(
          //   text: 'Login as Client',
          //   onClicked: () {
           
          //      Navigator.push(
          //                   (context),
          //                   MaterialPageRoute(
          //                       builder: (context) => ClientProfileScreen()));
          //   },
          // ),
          // ButtonWidget(
          //   text: 'Login as Maid',
          //   onClicked: () {
           
          //      Navigator.push(
          //                   (context),
          //                   MaterialPageRoute(
          //                       builder: (context) => ClientProfileScreen()));
          //   },
          // ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            (context),
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(colors: [
                              Colors.blue.shade900.withOpacity(1),
                              Colors.blue.withOpacity(0.7),
                            ])),
                        child: Text(
                          'Login as Client',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            (context),
                            MaterialPageRoute(
                                builder: (context) => GetDataScreen()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            // color: blueColor,
                            gradient: LinearGradient(colors: [
                              Colors.blue.shade900.withOpacity(1),
                              Colors.blue.withOpacity(0.7),
                            ])),
                        child: Text(
                          'Login as Maid',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5),
                        ),
                      ),
                    )
                  ],
                ),
              )),
             ),
       ),
    );
  }
}
