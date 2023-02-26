import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/auth/login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    height: 200,
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
                      "Welcome",
                      style: TextStyle(
                        color: Colors.indigo[800],
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Register with",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo[800],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.indigo[800],
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.indigo.shade50,
                          hintText: '',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.indigo[800],
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 12.0, top: 20.0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       Text(
                    //         'Forgot password?',
                    //         style: TextStyle(
                    //           color: Colors.indigo[800],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      height: 40,
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
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.indigo[800],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Do you have an account?",
                          style: TextStyle(
                            color: Colors.indigo[800],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const LoginScreen(),
                                ));
                          },
                          child: Text("Log in"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
