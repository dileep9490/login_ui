import 'package:flutter/material.dart';
import 'package:login_ui/screens/home_screen.dart';
import 'package:login_ui/screens/signup_screen.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login UI",
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.route: (context) => LoginScreen(),
        HomeScreen.routename: (context) => HomeScreen(),
        SignUpscreen.routename: (context) => SignUpscreen(),
      },
      home: LoginScreen(),
    );
  }
}
