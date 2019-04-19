import 'package:flutter/material.dart';
import 'package:hello/services/firebase/firebase.dart';

Widget register(context) {
  return ListView(
    children: <Widget>[
      InkWell(
        onTap: firebase.signIn,
        child: Container(
            height: 50, width: 50, child: Image.asset('assets/google.png')),
      ),
      Divider(),
      Container(
        height: 150,
        child: Image.asset('assets/login.jpeg'),
      ),
      Form(
        child: Column(
          children: <Widget>[
            ListTile(
              title: TextField(
                decoration: InputDecoration(labelText: 'First Name'),
              ),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(labelText: 'First Name'),
              ),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(labelText: 'First Name'),
              ),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(labelText: 'First Name'),
              ),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(labelText: 'First Name'),
              ),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(labelText: 'First Name'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text('Agree'),
            ),
            RaisedButton(
              child: Text('Login'),
              onPressed: firebase.signIn,
            )
          ],
        ),
      )
    ],
  );
}
