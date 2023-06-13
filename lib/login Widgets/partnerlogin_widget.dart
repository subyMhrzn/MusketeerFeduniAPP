import 'package:flutter/material.dart';
import 'package:musketeer_app/services/firebase_auth_methods.dart';
import 'package:provider/provider.dart';
import '../styles/colors.dart';

class PartnerLoginWidget extends StatelessWidget {
  const PartnerLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: AppColors.lightGreen,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 400,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/Icons/Buttons/Partner Login.png',
                  width: 60,
                  height: 60,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: Text(
                    'Partner Login',
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
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  height: 120,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: AppColors.widgetGrey,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(padding: EdgeInsets.all(8.0)),
                        Image.asset(
                          'lib/Icons/Social/apple_logo.png',
                          width: 70,
                          height: 70,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'Apple',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        )
                      ]),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context
                        .read<FirebaseAuthMethods>()
                        .signInWithFacebook(context);
                  },
                  child: Container(
                    width: 100,
                    height: 120,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: AppColors.widgetGrey,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(padding: EdgeInsets.all(8.0)),
                          Image.asset(
                            // 'lib/Icons/logo/facebook_logo.png',
                            'lib/Icons/Social/facebook_logo.png',
                            width: 70,
                            height: 70,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Facebook',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                          )
                        ]),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context
                        .read<FirebaseAuthMethods>()
                        .signInWithGoogle(context);
                  },
                  child: Container(
                    width: 100,
                    height: 120,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: AppColors.widgetGrey,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(padding: EdgeInsets.all(8.0)),
                          Image.asset(
                            'lib/Icons/Social/google_logo.png',
                            width: 70,
                            height: 70,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Google',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
