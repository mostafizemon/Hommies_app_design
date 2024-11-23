import 'package:flutter/material.dart';
class CustomSocialmediaIcon extends StatelessWidget {

  final Widget iconimage;

  const CustomSocialmediaIcon({super.key, required this.iconimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(.1),
          border:
          Border.all(
            color: Colors.white, // White border
            width: .8,
          ),
          boxShadow: [BoxShadow(
            color: const Color(0xffb000000).withOpacity(.25),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
          ]
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: iconimage,

    );
  }
}
