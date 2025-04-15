import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../Authentication/login.dart';

class SignupController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> signUp(BuildContext context) async {
    try {
      UserCredential data = await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      await _firestore.collection('Users').doc(data.user!.uid).set({
        'Name': nameController.text.trim(),
        'Username': usernameController.text.trim(),
        'Number': numberController.text.trim(),
        'Email': emailController.text.trim(),
        'Password': passwordController.text.trim(),
        'uid': data.user!.uid,
      });

      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    } catch (ex) {
      print('Something error try again: $ex');
    }
  }
}
