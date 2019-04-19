import 'package:flutter/material.dart';

Widget drawer(BuildContext context){
  return Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Rishabh"),
              accountEmail: new Text("abc@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown,
                child: new Text("P"),
              ),
            ),
            new ListTile(
              title: new Text("New Requests"),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/a");
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("My Orders"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("My Addresses"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Settings"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Notifications"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("My Wallet"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Rate Card"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("FAQ"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Logout"),
            ),
            new Divider(),
          ],
        ),
      );
}