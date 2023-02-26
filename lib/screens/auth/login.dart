import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/spinning_button.dart';
import 'package:flutter_application_3/providers/user_provider.dart';
import 'package:flutter_application_3/screens/auth/register.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // debugPrint(MediaQuery.of(context).size.height.toString());
    // debugPrint(MediaQuery.of(context).size.width.toString());
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
                      "Welcome back",
                      style: TextStyle(
                        color: Colors.indigo[800],
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Login with",
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
                        onChanged: (_) {
                          context.read<UserProvider>().setError(true);
                        },
                        controller:
                            context.read<UserProvider>().loginEmailController,
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
                        controller:
                            context.read<UserProvider>().loginPassController,
                        onChanged: (_) {
                          // debugPrint('onChanged');
                          context.read<UserProvider>().setError(true);
                        },
                        // obscureText: true,
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
                      padding: const EdgeInsets.only(right: 12.0, top: 20.0),
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
                        context.watch<UserProvider>().error == true
                            ? Text(
                                'Invalid email or password',
                                style: TextStyle(color: Colors.red),
                              )
                            : Text(''),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 290,
                          height: 50,
                          child: SpinningButton(),
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
                          "Don't have an account yet?",
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
                                      const RegisterScreen(),
                                ));
                          },
                          child: Text("Register now"),
                        )
                      ],
                    ),
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
