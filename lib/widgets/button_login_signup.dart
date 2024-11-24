import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonLoginSignup extends StatelessWidget {

  final VoidCallback? onTap;
  final String button_text;
  const ButtonLoginSignup({super.key, required this.button_text, this.onTap});

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.sizeOf(context);
    return  Container(
      width: screen.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xffbA053E8),
            const Color(0xffb8615EF).withOpacity(.5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(15), // Same border radius as button
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          button_text,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
