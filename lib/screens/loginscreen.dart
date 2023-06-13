import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Dashboard/dashboard_1.dart';
import '../Widgets/header_widget.dart';
import '../login Widgets/login_widget.dart';
import '../login Widgets/partnerlogin_widget.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();
    if (firebaseUser != null) {
      return const DashboardScreen();
    }
    return const Scaffold(
      appBar: HeaderWidget(title: 'Login'), //need to change the back button
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LoginWidget(),
              SizedBox(
                height: 20,
              ),
              PartnerLoginWidget(),
              SizedBox(
                height: 20,
              ),
              // SignUpWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
