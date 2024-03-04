import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../entry_point.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const SplashScreenPage(),
        settings: const RouteSettings(name: routeName));
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
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const EntryPoint()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("hello tahir"),
          CachedNetworkImage(
            imageUrl: 'https://app.junetheapp.com/app-assets/splash.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
        ],
      ),
    );
  }
}


