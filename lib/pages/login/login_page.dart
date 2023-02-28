import 'dart:convert';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:http/http.dart';
import 'package:logintask/constant/same_function.dart';
import 'package:logintask/model/login_api_model.dart';
import 'package:logintask/pages/client_screen/client_page.dart';
import 'package:logintask/pages/client_screen/client_profile.dart';
import 'package:logintask/pages/client_screen/list_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
      final isDarkMode = Theme.of(context).brightness == Brightness.dark;
        Future<LoginClass>? _LoginClass;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

Future<LoginClass> createAlbum(String uname, String password) async {
  final response = await http.post(
    Uri.parse('http://159.65.156.175/oxford/api/login.php'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'uname': uname,
         'password': password,
    }),
  );
  //OXFSTU0103

  if (response.statusCode == 200||response.statusCode == 200) {
 Navigator.push(
                            (context),
                            MaterialPageRoute(
                                builder: (context) => ClientPage()));
                         showSnackbar(context, "login success");
    print(response.statusCode);
    return LoginClass.fromJson(jsonDecode(response.body));
  } else {
     showSnackbar(context, "login failed");
    throw Exception("failed");
  }
}
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

                    Text('Please Login',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Colors.blue.shade800),),
                    SizedBox(height: 40,),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(hintText: "UserName"),
                    ),
                             SizedBox(height: 10,),
                              TextFormField(
                                controller: passwordController,
                      decoration: InputDecoration(hintText: "password"),
                    ),
                             SizedBox(height: 20,),

                    InkWell(
                      onTap: () {
                       setState(() {
              _LoginClass = createAlbum(emailController.text.toString(), passwordController.text.toString());
            });
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
                        child:const Text(
                          'Login ',
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
