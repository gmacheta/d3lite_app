import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widget.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _emailTextController =
      TextEditingController();
  TextEditingController _ageTextController = TextEditingController();
  TextEditingController _bdayTextController = TextEditingController();
  TextEditingController _locationTextController = TextEditingController();
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
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.orange, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
                    child: Column(children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Enter UserName", Icons.person_outline,
                          false, _userNameTextController),
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Enter Email", Icons.email_outlined,
                          false, _emailTextController),
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Enter Password", Icons.lock_outline,
                          true, _passwordTextController),

                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Enter Skin Tone", Icons.gesture,
                          false, _ageTextController),
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Enter Birthday dd/mm/yy", Icons.cake,
                          false, _bdayTextController),
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Enter Location", Icons.location_pin,
                          false, _locationTextController),
                      const SizedBox(
                        height: 20,
                      ),
                      signInSignUpButton(context, false, () {

                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      }),

                      const SizedBox(
                        height: 250,
                      ),
                    ])))));
  }
}
