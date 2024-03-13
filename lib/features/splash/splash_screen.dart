import 'dart:async';
import 'package:flutter/material.dart';
import '../../onBoarding/login/login_screen.dart';
import '../../screen_buttons.dart';
import '../../utils/strings/translation_widget.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SplashScreenPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    // Navigate to the login page after 3 seconds
    Timer(
      const Duration(seconds: 4),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const
        // LoginPageScreen(),
        ScreenButtons(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/svg/splash.jpg'),
            fit: BoxFit.cover, // Use BoxFit.cover to stretch the image
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 300),

          ],
        ),
      ),
    );
  }
}
