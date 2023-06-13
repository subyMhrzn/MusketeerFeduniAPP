import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:musketeer_app/firebase_options.dart';
import 'package:musketeer_app/login%20Widgets/login_widget.dart';
import 'package:musketeer_app/screens/loginscreen.dart';
import 'package:musketeer_app/screens/welcomescreen.dart';
import 'package:musketeer_app/services/firebase_auth_methods.dart';
import 'Dashboard/dashboard_1.dart';
import 'package:provider/provider.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await FacebookAuth.i.webAndDesktopInitialize(
      appId: "572860851589770",
      cookie: true,
      xfbml: true,
      version: "v13.0",
    );
  }
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseAuthMethods>(
          create: (_) => FirebaseAuthMethods(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<FirebaseAuthMethods>().authState,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Musketeer',
        home: const SplashScreen(),

        // home: const AuthWrapper(),
        routes: {
          // SignUpWidget.routeName: (context) => const SignUpWidget(),
          LoginWidget.routeName: (context) => const LoginWidget(),
          WelcomeScreen1.routeName: (context) => const WelcomeScreen1(),
          LoginScreen.routeName: (context) => const LoginScreen(),
          DashboardScreen.routeName: (context) => const DashboardScreen(),
        },
      ),
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      return const DashboardScreen();
    }
    return const WelcomeScreen1();
  }
}
