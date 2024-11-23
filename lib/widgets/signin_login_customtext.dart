import 'package:flutter/material.dart';
class SigninLoginCustomtext extends StatelessWidget {
  final String haveaccount,signuplogin;

  const SigninLoginCustomtext({super.key, required this.haveaccount, required this.signuplogin});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(haveaccount,style: const TextStyle(
            fontSize: 13,
            color: Colors.white
        ),),
        Text(signuplogin,style: const TextStyle(fontSize: 13,color: Colors.white),),
      ],
    );
  }
}
