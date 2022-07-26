// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_build_context_synchronously, constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../screens/categories_screen.dart';
import './reusable_widgets.dart';

enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class OtpSystem extends StatefulWidget {
  static const routeName = '/-Otp';

  @override
  State<OtpSystem> createState() => _OtpSystemState();
}

class _OtpSystemState extends State<OtpSystem> {
  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;

  final _usernameTextController = TextEditingController();
  final phoneController = TextEditingController();
  final officePhoneController = TextEditingController();
  final otpController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  String verificationId;

  bool showLoading = false;

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });

    try {
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);
      setState(() {
        showLoading = false;
      });

      if (authCredential.user != null) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CategoriesScreen()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });
      _scaffoldkey.currentState
          ?.showSnackBar(SnackBar(content: Text(e.message.toString())));
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up with Phone",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          // ignore: prefer_const_literals_to_create_immutables
          gradient: LinearGradient(colors: [
            const Color(0xFFCB2B93),
            const Color(0xFF9546C4),
            const Color(0xFF5E61F4),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        padding: const EdgeInsets.all(15),
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
                  buildPhoneNumber(
                    Icons.work,
                    "Enter your Office number",
                    officePhoneController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildPhoneNumber(
                    Icons.work,
                    "Enter your Phone number",
                    phoneController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildPhoneNumber(
                    Icons.work,
                    "Enter OTP",
                    otpController,
                  ),
                  showLoading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : currentState ==
                              MobileVerificationState.SHOW_MOBILE_FORM_STATE
                          ? loginButtons(
                              context,
                              "SEND OTP",
                              () async {
                                setState(() {
                                  showLoading = true;
                                });
                                await _auth.verifyPhoneNumber(
                                  phoneNumber: phoneController.text,
                                  verificationCompleted:
                                      (phoneAuthCredential) async {
                                    setState(() {
                                      showLoading = false;
                                    });
                                  },
                                  verificationFailed:
                                      (verificationFailed) async {
                                    setState(() {
                                      showLoading = false;
                                    });
                                    _scaffoldkey.currentState?.showSnackBar(
                                        SnackBar(
                                            content: Text(verificationFailed
                                                .message
                                                .toString())));
                                  },
                                  codeSent:
                                      (verificationId, resendingToken) async {
                                    setState(() {
                                      showLoading = false;
                                      currentState = MobileVerificationState
                                          .SHOW_OTP_FORM_STATE;
                                      this.verificationId = verificationId;
                                    });
                                  },
                                  codeAutoRetrievalTimeout:
                                      (verificationId) async {},
                                );
                              },
                            )
                          : loginButtons(
                              context,
                              "SEND",
                              () async {
                                PhoneAuthCredential phoneAuthCredential =
                                    PhoneAuthProvider.credential(
                                        verificationId: verificationId,
                                        smsCode: otpController.text);
                                signInWithPhoneAuthCredential(
                                    phoneAuthCredential);
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
