import 'package:flutter/material.dart';
import 'package:time_tracker/common_widgets/custom_elevated_button.dart';
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
            CustomElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    "images/googlelogo.png",
                  ),
                  Text(
                    "Sign in with Google",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15.0,
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset(
                      "images/googlelogo.png",
                    ),
                  ),
                ],
              ),
              color: Colors.white,
              borderRadius: 4.0,
              onPressed: () {},
              height: 40.0,
            ),
            SizedBox(
              height: 8.0,
            ),
            CustomElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    "images/facebooklogo.png",
                  ),
                  Text(
                    "Sign in with Facebook",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset(
                      "images/facebooklogo.png",
                    ),
                  ),
                ],
              ),
              color: Color(0xFF334D92),
              borderRadius: 4.0,
              onPressed: () {},
              height: 40.0,
            ),
            SizedBox(
              height: 8.0,
            ),
            CustomElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    size: 32.5,
                  ),
                  Text(
                    "Sign in with Email",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Icon(
                      Icons.mail,
                      size: 32.5,
                    ),
                  ),
                ],
              ),
              color: Colors.teal.shade700,
              borderRadius: 4.0,
              onPressed: () {},
              height: 40.0,
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
