import 'package:angela_firebase/screens/login_screen.dart';
import 'package:angela_firebase/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'WelcomeScreen';

  const WelcomeScreen({super.key});
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  // late AnimationController controller;
  // late Animation animation;

  @override
  void initState() {
    super.initState();

    // controller =
    //     AnimationController(duration: const Duration(seconds: 1), vsync: this);
    // animation = CurvedAnimation(parent: controller, curve: Curves.easeInQuint);
    // animation = ColorTween(begin: Colors.blueGrey, end: Colors.white).animage(controller);

    // controller.forward();

    // controller.addListener(() {
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    // contoller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'App_logo',
                  child: SizedBox(
                    height: 60.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: AnimatedTextKit(
                    totalRepeatCount: 1,
                    animatedTexts: [
                      TypewriterAnimatedText('Flash Chat',
                          speed: const Duration(milliseconds: 100),
                          cursor: '|',
                          textStyle: const TextStyle(
                              fontSize: 45.0, fontWeight: FontWeight.w900)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
                btnColor: Colors.lightBlueAccent,
                text: 'Log In',
                callBack: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                }),
            RoundedButton(
                btnColor: Colors.blueAccent,
                text: 'Register',
                callBack: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                }),
          ],
        ),
      ),
    );
  }
}
