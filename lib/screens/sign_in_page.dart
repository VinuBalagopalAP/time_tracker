import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/screens/sign_in_button.dart';
import 'package:time_tracker/screens/social_sign_in_button.dart';

class SignInPage extends StatelessWidget {
  Future<void> _signInAnonymously() async {
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      print('${userCredential.user!.uid}');
    } catch (e) {
      print(e.toString());
    }
  }

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
            SocialSignInButton(
              assetName: "images/googlelogo.png",
              text: 'Sign in with Google',
              color: Colors.white,
              textColor: Colors.black87,
              onPressed: () {},
            ),
            SizedBox(
              height: 8.0,
            ),
            SocialSignInButton(
              assetName: "images/facebooklogo.png",
              text: 'Sign in with Facebook',
              color: Color(0xFF334D92),
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(
              height: 8.0,
            ),
            SocialSignInButton(
              assetName: "images/mail.png",
              text: 'Sign in with Email',
              color: Colors.teal.shade700,
              textColor: Colors.white,
              onPressed: () {},
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
              onPressed: _signInAnonymously,
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
