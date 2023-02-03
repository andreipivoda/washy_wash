import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Washy wash'),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
              Image.asset(
                height: 300,
                fit: BoxFit.none,
                'lib/assets/images/washing-machine.png',
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your service of cleaning",
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: "CroissantOne",
                      color: Colors.indigo[800],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                  ),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.indigo[800],
                    ),
                  ),
                  onPressed: () {
                    context.go('/register');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
