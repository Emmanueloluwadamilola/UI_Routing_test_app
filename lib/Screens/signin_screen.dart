import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/nav_bar.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late String email;
  late String userPassword;

  late int mailIndex = email.indexOf('@');
  late String actualPassword = email.substring(0, mailIndex);

  void loginController() {
    print(actualPassword);
    print("");
    if (email.isEmpty || userPassword.isEmpty) {
      showSnackBar('Password and email needed');
      return;
    }

    if (userPassword != actualPassword) {
      showSnackBar('Password Not Correct');
      return;
    }

    if (userPassword == actualPassword && email.isNotEmpty) {
      showSnackBar('Successfully Logged In');
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const NavBarHandler()));
    }
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: majorColour,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white60,
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white60,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  //alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.42,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: majorColour,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(80),
                              bottomLeft: Radius.circular(80))),
                      child: Column(
                        children: [
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.035),
                          const Image(
                              width: 120,
                              height: 120,
                              image: AssetImage('assets/images/logo2.png')),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.17),
                        Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.46,
                            width: MediaQuery.of(context).size.width / 1.1,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 245, 238, 238),
                                borderRadius: BorderRadius.circular(22)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 13, left: 13),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.015,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2, color: majorColour),
                                            shape: BoxShape.rectangle,
                                            color: majorColour,
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                            ),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 15, bottom: 15),
                                            child: Text(
                                              'Login',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.white),
                                              shape: BoxShape.rectangle,
                                              color: Colors.white,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 15, bottom: 15),
                                              child: Text(
                                                'Sign up',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: majorColour,
                                                    fontSize: 16),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.018),
                                  TextField(
                                    onChanged: (value) => email = value,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: majorColour)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      disabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      errorBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                      enabled: true,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.018,
                                  ),
                                  TextField(
                                    obscureText: true,
                                    onChanged: (value) => userPassword = value,
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: majorColour)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        disabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                        enabled: true,
                                        suffixIcon: Icon(Icons.visibility),
                                        suffixIconColor: Colors.black),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.015),
                                  const Text(
                                    'Forgot Password?',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: majorColour, fontSize: 15),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.025),
                                  InkWell(
                                    onTap: loginController,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                          color: majorColour,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
