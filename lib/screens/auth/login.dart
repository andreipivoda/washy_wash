import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                height: 150,
                fit: BoxFit.cover,
                'lib/assets/images/header-pic.png',
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome back",
                  style: TextStyle(
                    color: Colors.indigo[800],
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Login with",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.indigo[800],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.indigo[800],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.email,
                        // color: Colors.green,
                        size: 20,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: Colors.indigo.shade50,
                      hintText: '',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.indigo[800],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: Colors.indigo.shade50,
                      hintText: '',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0, top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.indigo[800],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 290,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          context.go('/');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.indigo[800],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Don't have an account yet?",
                      style: TextStyle(
                        color: Colors.indigo[800],
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text("Sign in"))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
