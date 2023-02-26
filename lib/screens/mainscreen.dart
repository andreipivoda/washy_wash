import 'package:flutter/material.dart';
import 'package:flutter_application_3/providers/user_provider.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Text(context.watch<UserProvider>().refresh),
              Text(context.watch<UserProvider>().token),
            ],
          ),
        ),
      ),
    );
  }
}
