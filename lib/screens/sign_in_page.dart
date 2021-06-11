import 'package:flutter/material.dart';
import 'package:time_tracker/screens/sign_in_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        title: Center(
          child: Text(
            'Time Tracker',
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Sign in",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            SignInButton(
              color: Colors.white,
              onPressed: () {},
              text: "Sign in with Google",
              textColor: Colors.black87,
            ),
            SizedBox(
              height: 8.0,
            ),
            SignInButton(
              color: Color(0xFF334D92),
              onPressed: () {},
              text: "Sign in with Facebook",
              textColor: Colors.white,
            ),
            SizedBox(
              height: 8.0,
            ),
            SignInButton(
              onPressed: () {},
              text: "Sign in with Email",
              textColor: Colors.white,
              color: Colors.teal.shade700,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "or",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8.0,
            ),
            SignInButton(
              onPressed: () {},
              text: "Go Anonymous",
              textColor: Colors.black,
              color: Colors.lime.shade300,
            ),
          ],
        ),
      ),
    );
  }
}
