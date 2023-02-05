import 'package:d3lite_app/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.orange, Colors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height * 0.1 - 70, 20, 0),
              child: Column(
                children: <Widget>[
                  logoWidget(
                      "assets/images/Brown Sun Line Burst Minimalist Coaching Logo (2).png"),

                  reusableTextField("Enter UserName", Icons.person_outline, false,
                      _emailTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Password", Icons.lock_outline, true,
                      _passwordTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  signInSignUpButton(context, true, () {}),
                  signUpOption(),
                  const SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
          style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => SignUpScreen()));
    },
    child: const Text(
      "  Sign Up",
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
            )


      ],

    );

  }
}
