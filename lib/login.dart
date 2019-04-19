import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hello/drawer.dart';

class Login extends StatelessWidget {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gsa = await googleSignInAccount.authentication;
    AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: gsa.idToken, accessToken: gsa.accessToken);
    FirebaseUser user = await auth.signInWithCredential(credential);
    print("User Name:${user.displayName}");
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: drawer(context),
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Center(
          child: Container(
            child: FlatButton(
              child: Text('Login'),
              onPressed: _signIn,
            ),
          ),
        ),
      ),
    );
  }
}
