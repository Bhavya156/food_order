// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_order/screens/category_meals_screen.dart';
import '../widgets/reusable_widgets.dart';
import '../screens/categories_screen.dart';
import '../widgets/otp_system.dart';

class SignUpScreen extends StatefulWidget {

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _usernameTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          gradient: LinearGradient(colors: [
            const Color(0xFFCB2B93),
            const Color(0xFF9546C4),
            const Color(0xFF5E61F4),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField(
                    "Enter Username",
                    Icons.person_outline,
                    false,
                    _usernameTextController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField(
                    "Enter your email",
                    Icons.person_outline,
                    false,
                    _emailTextController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField(
                    "Enter password",
                    Icons.lock,
                    false,
                    _passwordTextController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  loginButtons(
                    context,
                    "Sign Up",
                    () {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _emailTextController.text,
                              password: _passwordTextController.text)
                          .then(
                        (value) {
                          Navigator.of(context).pushNamed(CategoryMealsScreen.routeName);
                          
                        },
                      ).onError((error, stackTrace) {
                        print("Error ${error.toString()}");
                      });
                    },
                  ),
                  loginButtons(
                    context,
                    "Sign Up with phone number",
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpSystem(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
