import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routename = '/HomeScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff4EE658),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet. Ut quidem eaque et commodi quasi a provident eveniet qui quaerat dicta. Ea dolorum sit soluta dolorum et sequi quas non voluptas quia et explicabo facilis eos laboriosam iure. Eum enim quod qui voluptas quia eos quam repudiandae. Qui esse explicabo sed rerum laboriosam sit obcaecati expedita ut velit dolore et voluptatem recusandae id velit voluptas ',
                      style: TextStyle(
                        fontFamily: 'Kalam',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
