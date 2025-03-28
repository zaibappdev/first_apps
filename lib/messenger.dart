import 'package:flutter/material.dart';

class Messenger extends StatefulWidget {
  const Messenger({super.key});

  @override
  State<Messenger> createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/image.png'),
          SizedBox(height: 15,),
          Text('Welcome to Messenger',style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
