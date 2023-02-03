import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text("LOGIN PAGE"),
                ElevatedButton(
                  onPressed: () => context.go('/login'),
                  child: const Text('Go back to the Login screen'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
