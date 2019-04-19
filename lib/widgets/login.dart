import 'package:flutter/material.dart';
import 'package:hello/services/firebase/firebase.dart';

Widget login(context) {
  return ListView(
    children: <Widget>[
      Container(
        height: 150,
        child: Image.asset('assets/login.jpeg'),
      ),
      Form(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Mobile / Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Mobile / Email'),
            ),
            RaisedButton(
              child: Text('Login'),
              onPressed: () {
                // firebase.signIn();
                Navigator.of(context).pushReplacementNamed('/requests');
              },
            )
          ],
        ),
      ),
      InkWell(
        onTap: firebase.signIn,
        child: Container(
            height: 50, width: 50, child: Image.asset('assets/google.png')),
      )
    ],
  );
}
