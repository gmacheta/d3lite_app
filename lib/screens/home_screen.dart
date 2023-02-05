import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                children:  <Widget>[
                  const SizedBox(
                    height: 200,
                  ),
                  const Icon(Icons.sunny, size: 30, color: Colors.black54),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 20,
                    child: LinearProgressIndicator(
                      value: 0.4,
                      backgroundColor: Colors.white70,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),


                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text("Spend 2 more minutes outside",
                      style: TextStyle(color: Colors.black, fontSize: 24)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("YOU CAN DO IT!",
                      style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 80,
                  ),


                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Your Goal:', style: TextStyle(fontSize: 19, color: Colors.black)),

                        Text('150', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
                        Text('\u00B5g/day', style: TextStyle(fontSize: 16, color: Colors.black54)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 209,
                  ),

                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          )),


    );
  }
}



