import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:musketeer_app/screens/welcomescreen.dart';
import 'package:musketeer_app/styles/colors.dart';
import 'package:provider/provider.dart';
import '../services/firebase_auth_methods.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const HeaderWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.headerGrey,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 2.0,
              spreadRadius: 1.0,
              offset: const Offset(0.0, 1.0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Image.asset(
                'lib/Icons/Home Page/back_Button.png',
                width: 20,
                height: 20,
              ),
              onPressed: () {
                //takes to welcome screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WelcomeScreen1()),
                );
              },
            ),
            Expanded(
              child: Container(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: AppColors.borderGrey,
                  fontSize: 24.0,
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),

            // Container(
            GestureDetector(
              onTap: () {
                if (firebaseUser != null) {
                  final user = context.read<FirebaseAuthMethods>().user;
                  showMenu(
                    context: context,
                    position: const RelativeRect.fromLTRB(1, 75, 0, 0),
                    items: [
                      PopupMenuItem(
                        value: "user email",
                        // child: Text('option1'),
                        child: Text(user.email!),
                      ),
                      PopupMenuItem(
                        value: "user signout",
                        child: Container(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const WelcomeScreen1()),
                              );
                              context
                                  .read<FirebaseAuthMethods>()
                                  .signOut(context);
                            },
                            child: const Text('Sign out'),
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: "user delete account",
                        child: Container(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const WelcomeScreen1()),
                              );
                              context
                                  .read<FirebaseAuthMethods>()
                                  .deleteAccount(context);
                            },
                            child: const Text('Delete Acc'),
                          ),
                        ),
                      ),
                    ],
                    elevation: 8.0,
                  );
                }
              },
              child: Container(
                margin: const EdgeInsets.only(right: 16.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                      offset: const Offset(0.1, 0),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'lib/Icons/logo/Musketeer.png',
                    width: 40.0,
                    height: 40.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
