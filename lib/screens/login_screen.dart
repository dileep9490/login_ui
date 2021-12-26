import 'package:flutter/material.dart';
import 'package:login_ui/screens/home_screen.dart';
import 'package:login_ui/screens/signup_screen.dart';
import 'package:login_ui/widgets/input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const route = '/Loginscreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff4EE658),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.34,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 27, bottom: 70),
                    child: Stack(
                      children: [
                        Center(
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(27 / 360),
                            child: Image.asset('assets/images/thunder.png'),
                          ),
                        ),
                        Center(
                            child: Text(
                          'Streakz',
                          style: TextStyle(
                              fontFamily: "Shadows Into Light",
                              fontWeight: FontWeight.w700,
                              // fontStyle: FontStyle.normal,
                              color: Colors.white,
                              fontSize: 50),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.440,
                width: double.infinity,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: [
                      InputField(
                        left: 0,
                        top: 20,
                        right: 0,
                        bottom: 40,
                        hintText: "abcd123@mail.com",
                      ),
                      InputField(
                          left: 0,
                          top: 0,
                          right: 0,
                          bottom: 40,
                          hintText: "Password"),
                      Container(
                        width: 200,
                        height: 40,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blueAccent),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, HomeScreen.routename);
                          },
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    'Reset link has been sent to your mail')));
                          },
                          child: Text(
                            "forgot Password?",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ))
                    ],
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpscreen.routename);
                  },
                  child: Text(
                    "Signup here",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
