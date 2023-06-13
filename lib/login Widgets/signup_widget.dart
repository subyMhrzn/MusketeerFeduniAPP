import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/firebase_auth_methods.dart';
import '../styles/colors.dart';

class SignUpWidget extends StatefulWidget {
  static String routeName = '/signup-widget';
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  SignupWidgetState createState() => SignupWidgetState();
}

class SignupWidgetState extends State<SignUpWidget> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  signUpUser() async {
    context.read<FirebaseAuthMethods>().signUpWithEmail(
          email: emailController.text,
          password: passwordController.text,
          context: context,
        );
  }

  @override
  Widget build(BuildContext context) {
    // final firebaseUser = context.watch<User?>();
    // if (firebaseUser!.emailVerified) {
    //   return const DashboardScreen();
    // }
    return Container(
      height: 300,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: AppColors.lightBlue,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: 400,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/Icons/Buttons/Signup.png',
                  width: 60,
                  height: 60,
                  fit: BoxFit.fitHeight,
                ),
                const Expanded(
                  child: Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, color: AppColors.darkGrey),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //Email and password textbox
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextField(
                  obscureText: false,
                  controller: emailController,
                  decoration: const InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 24),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 24),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: signUpUser,
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsetsDirectional.symmetric(
                            vertical: 12, horizontal: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        foregroundColor: AppColors.darkGrey,
                        backgroundColor: AppColors.headerGrey),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
