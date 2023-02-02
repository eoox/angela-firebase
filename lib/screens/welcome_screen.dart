import 'package:angela_firebase/screens/login_screen.dart';
import 'package:angela_firebase/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'WelcomeScreen';
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
      // backgroundColor: Colors.amber.withOpacity(controller.value),
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
                    // height: animation.value * 100,
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

                // const Text(
                //   // '${controller.value.toInt()}%',
                //   'Flash Chat',
                //   style: TextStyle(
                //     fontSize: 45.0,
                //     fontWeight: FontWeight.w900,
                //   ),
                // ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                    //Go to login screen.
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    'Log In',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                    //Go to registration screen.
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    'Register',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}