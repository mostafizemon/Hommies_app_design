import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

class WelcomeText extends StatelessWidget {
  final String welcome;

  const WelcomeText({super.key, required this.welcome});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            welcome,
            style: const TextStyle(
              fontSize: 27,
              color: Colors.white,
              fontFamily: "Poppins-SemiBold.ttf",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SvgPicture.asset("assets/images/logo.svg"),
        ],
      ),
    );
  }
}
