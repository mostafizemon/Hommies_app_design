import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:hommies/widgets/welcome_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg2.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),


          const SafeArea(
            child: Column(
              children: [
                WelcomeText(welcome: "Welcome"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
