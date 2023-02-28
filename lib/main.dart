import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:logintask/pages/profile_page.dart';
import 'package:logintask/pages/login/loginbutton.dart';
import 'package:logintask/pages/splash_screen.dart';
import 'package:logintask/themes.dart';
import 'package:logintask/utils/user_preferences.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          // theme: initTheme,
          // theme: Theme.of(context),
          title: title,
          home: SplaceScreen(),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const SplaceScreen(),
//     );
//   }
// }
