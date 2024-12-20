import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hommies/widgets/button_login_signup.dart';
import 'package:hommies/widgets/custom_socialmedia_icon.dart';
import 'package:hommies/widgets/signin_login_customtext.dart';
import 'package:hommies/widgets/textfield_custom.dart';
import 'package:hommies/widgets/welcome_text.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.sizeOf(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg2.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            const SafeArea(
              child: WelcomeText(welcome: "Welcome"),
            ),

            Positioned(
              top: screen.height *0.10,
              right: 0,
              child: Image.asset("assets/images/avater.png",height: 350,),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                reverse: true,
                child: Container(
                  height: screen.height * .65 -
                      MediaQuery.of(context).viewInsets.bottom*.80,
                  width: screen.width,
                  decoration: BoxDecoration(
                      color: const Color(0xffb08000e).withOpacity(.35),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text(
                            "Get Started",
                            style: TextStyle(
                                fontFamily: "fonts/Poppins-Medium.ttf",
                                fontSize: 28,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 40),
                          const TextfieldCustom(
                            hinttext: "yourname@gmail.com",
                            prefixicon: Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            ),
                          ),

                          const SizedBox(height: 20),
                          const TextfieldCustom(
                            hinttext: "@yourname",
                            prefixicon: Icon(
                              Icons.person_outline,
                              color: Colors.white,
                            ),
                          ),


                          const SizedBox(height: 20),
                          const TextfieldCustom(
                              hinttext: "password",
                              prefixicon: Icon(
                                Icons.vpn_key_outlined,
                                color: Colors.white,
                              )),
                          const SizedBox(height: 30),
                          const ButtonLoginSignup(button_text: "Sign Up"),
                          const SizedBox(height: 25),
                          const SigninLoginCustomtext(
                              haveaccount: "Already have an account ?",
                              signuplogin: " Log in"),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomSocialmediaIcon(
                                iconimage: SvgPicture.asset(
                                  "assets/icons/google.svg",
                                  height: 25,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CustomSocialmediaIcon(
                                iconimage: SvgPicture.asset(
                                  "assets/icons/apple.svg",
                                  height: 25,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CustomSocialmediaIcon(
                                iconimage: SvgPicture.asset(
                                  "assets/icons/facebook.svg",
                                  height: 25,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
