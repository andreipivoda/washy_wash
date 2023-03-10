import 'package:flutter/material.dart';
import 'package:flutter_application_3/providers/user_provider.dart';
import 'package:flutter_application_3/screens/mainscreen.dart';
import 'package:provider/provider.dart';
import './screens/auth/register.dart';
import './screens/welcomescreen.dart';
import './screens/auth/login.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => UserProvider()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/main': (context) => const MainScreen(),
      },
    );
  }
}
