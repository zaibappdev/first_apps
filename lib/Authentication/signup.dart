import 'package:flutter/material.dart';
import '../Firbase/get_x_controller.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final SignupController signupController = SignupController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,

      ///App bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create an account',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Text field 1
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: signupController.nameController,
              cursorHeight: 14,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.face, color: Colors.black),
                hintText: 'Name',
                // label: Center(child: Text('Hello'))
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
              ),
            ),
          ),

          //Text field 2
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: signupController.usernameController,
              cursorHeight: 14,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, color: Colors.black),
                hintText: 'Username',
                // label: Center(child: Text('Hello'))
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
              ),
            ),
          ),

          //Text field 2
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: signupController.numberController,
              cursorHeight: 14,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone, color: Colors.black),
                hintText: 'Number',
                // label: Center(child: Text('Hello'))
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
              ),
            ),
          ),

          //Text field 3
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: signupController.emailController,
              cursorHeight: 14,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: Colors.black),
                hintText: 'Email',
                // label: Center(child: Text('Hello'))
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
              ),
            ),
          ),

          //Text field 4
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: signupController.passwordController,
              cursorHeight: 14,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: Colors.black),
                hintText: 'Password',
                // label: Center(child: Text('Hello'))
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
              ),
            ),
          ),

          //Elevated button login
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              height: 55,

              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  signupController.signUp(context);
                },
                child: Text(
                  'Signup',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
          ),

          //Divider with text
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: Divider(height: 60, color: Colors.grey, indent: 20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(child: Divider(color: Colors.grey, endIndent: 20)),
            ],
          ),

          //Text last
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 4),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
