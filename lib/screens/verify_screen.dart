import 'package:flutter/material.dart';
import 'package:sample_application/screens/screen.dart';
import 'package:sample_application/widget/widget.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.chevron_left,
                    size: 30,
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'Verfy Phone',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              VerifiedCheckBox(),
              SizedBox(
                height: 50,
              ),
              Text(
                'Verify your Number',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      ' we\'ve sent you a Verification Code to verify your number on',
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: ' +(234)-901-2345-678',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: ' Change',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Enter the code below to complete registration',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CodeContainer(),
              SizedBox(
                height: 80,
              ),
              Text(
                'Didn\'t receive any Code? Resend in 7',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeachersScreen(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                  backgroundColor: Color(0xFF000000),
                  primary: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
                child: Text('Proceed'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
