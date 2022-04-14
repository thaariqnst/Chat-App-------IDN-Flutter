import 'package:chatt_app/screen/login_screen.dart';
import 'package:chatt_app/screen/register_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'WELCOME_SCREEN';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                const Text(
                  'Flash Chat',
                  style:  TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.orange),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    //! go login screen
                    Navigator.pushReplacementNamed(context, LoginScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42,
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Material(
                elevation: 5.0,
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    //! go register screen
                    Navigator.pushReplacementNamed(context, RegisterScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42,
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Colors.white),
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
