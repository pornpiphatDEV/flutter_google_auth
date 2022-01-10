import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'profilepage.dart';
import 'googleauth.dart';

// import 'googleauth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

// GoogleAuth googleauth = GoogleAuth();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoggedIn = false;

  GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(title: Text("Codesundar")),
            body: Container(
              child: Center(
                child: ElevatedButton(
                  child: Text("Login with Google"),
                  onPressed: () async {
                    signInWithGoogle().then((result) {
                      if (result != null) {
                        print(result);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Profilepage();
                            },
                          ),
                        );
                      }
                    });
                  },
                ),
              ),
            ),
          );
        });
  }
}
