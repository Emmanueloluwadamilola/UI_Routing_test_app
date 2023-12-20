import 'package:flutter/material.dart';
import 'package:test_app/Screens/signin_screen.dart';
import 'package:test_app/constants.dart';

class DialogBoxWidget extends StatelessWidget {
  const DialogBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Image(
        image: AssetImage(
          'assets/images/logo.jpg',
        ),
        width: 115,
        height: 115,
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      contentPadding: const EdgeInsets.only(bottom: 5),
      titlePadding: const EdgeInsets.only(
        top: 1,
      ),
      content: const Text(
        "Are you sure\n you want to Sign out of Rock?",
        textAlign: TextAlign.center,
        style: TextStyle(),
      ),
      actions: [
        Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()),
                      (route) => false);
                },
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: majorColour,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Center(
                          child: Text(
                        "Sign me out",
                        style: TextStyle(color: Colors.white),
                      )),
                    ))))
      ],
    );
  }
}
