import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/user_provider.dart';
import '../screens/mainscreen.dart';

class SpinningButton extends StatelessWidget {
  const SpinningButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.amber),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      onPressed: context.read<UserProvider>().loading == false
          ? () {
              context.read<UserProvider>().setLoading();
              context
                  .read<UserProvider>()
                  .login()
                  .then(
                    (_) => {
                      if (context.read<UserProvider>().error == false)
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const MainScreen(),
                              ))
                        },
                    },
                  )
                  .then((_) => context.read<UserProvider>().setLoading());
            }
          : null,
      child: context.watch<UserProvider>().loading
          ? Text(
              'loading ...',
              style: TextStyle(
                color: Colors.indigo[800],
              ),
            )
          : Text(
              'Login',
              style: TextStyle(
                color: Colors.indigo[800],
              ),
            ),
    );
  }
}
