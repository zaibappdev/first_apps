import 'package:first_apps/Authentication/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'forget_password.dart';

class ResetCodeVerify extends StatefulWidget {
  const ResetCodeVerify({super.key});

  @override
  State<ResetCodeVerify> createState() => _ResetCodeVerifyState();
}

class _ResetCodeVerifyState extends State<ResetCodeVerify> {
  final TextEditingController otpController = TextEditingController();

  //from AI code
  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  //from AI code
  void verifyOtp() {
    final otp = otpController.text;
    debugPrint('Submitted OTP: $otp');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 85),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_outline, size: 60, color: Colors.black87),
            SizedBox(height: 10),
            Text(
              'Verify code',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "Kindly re-enter the 6-digit code that was sent to your registered email for verification purposes.",
              style: TextStyle(fontSize: 14, color: Colors.black54),
              textAlign: TextAlign.center,
            ),

            //TextField button
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pinput(
                    length: 6,
                    controller: otpController,
                    onCompleted: (pin) {
                      debugPrint('Entered OTP: $pin');
                      // Optional: trigger verification here
                    },
                  ),
                ],
              ),
            ),

            // Resend code
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t receive the code?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                //Resend code
                SizedBox(width: 4),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Signup()),
                    // );
                  },
                  child: Text(
                    'Resend code',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            //Elevated button
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetPassword()),
                    );
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
            ),

            //Divider with text
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(child: Divider(color: Colors.grey)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("OR"),
                ),
                Expanded(child: Divider(color: Colors.grey)),
              ],
            ),

            //Text button Change your email address
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgetPassword()),
                );
              },
              child: Text(
                "Change your email address",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
