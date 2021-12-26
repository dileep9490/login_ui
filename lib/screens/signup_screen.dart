import 'package:flutter/material.dart';
import 'package:login_ui/widgets/input_field.dart';

class SignUpscreen extends StatelessWidget {
  const SignUpscreen({Key? key}) : super(key: key);
  static const routename = '/Signupscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4EE658),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              height: MediaQuery.of(context).size.height * 0.27,
              child: Center(
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(27 / 360),
                  child: Image.asset(
                    'assets/images/thunder.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  InputField(
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: 20,
                      hintText: 'UserName'),
                  InputField(
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: 20,
                      hintText: 'Enter email'),
                  InputField(
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: 20,
                      hintText: 'Enter Password'),
                  InputField(
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: 20,
                      hintText: 'Confirm Password'),
                  Container(
                    width: 200,
                    height: 40,
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.blueAccent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                      child: Text(
                        'Sign Up ',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
