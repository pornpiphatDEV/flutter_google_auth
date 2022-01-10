import 'package:flutter/material.dart';
import 'package:flutter_google_auth/googleauth.dart';
import 'package:flutter_google_auth/loginpage.dart';
class Profilepage extends StatefulWidget {
  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Codesundar")),
      body: Container(
          child: Column(
        children: [
          Image.network(imageUrl),
          Text(name),
          Text(email),
          Text(userid),
          TextButton(
              onPressed: () {
                signOutGoogle();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }), ModalRoute.withName('/'));
              },
              child: Text("Logout"))
        ],
      )),
    );
  }
}
