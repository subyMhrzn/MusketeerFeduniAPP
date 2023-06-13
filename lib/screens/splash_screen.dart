import 'dart:async';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:musketeer_app/main.dart';
// import 'package:musketeer_app/screens/home_screen.dart';
// import 'package:musketeer_app/Widgets/widget_tree.dart';
// import 'package:provider/provider.dart';
// import '../Dashboard/dashboard_1.dart';
// import 'welcomescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    const delay = Duration(seconds: 5);
    Future.delayed(delay, () => onTimerFinished());
  }

  void onTimerFinished() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (BuildContext context) {
        return const AuthWrapper();
        // return const WidgetTree();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/Icons/logo/Musketeer.png',
            width: 300.0,
            height: 300.0,
          ),
          const SizedBox(height: 16),
          const Text('Loading', style: TextStyle(fontSize: 42)),
        ],
      )),
    );
  }
}



 // need to add an loading animation