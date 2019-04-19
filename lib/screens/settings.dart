import 'package:flutter/material.dart';
import 'package:hello/widgets/drawer.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('Push Notifications'),
            subtitle: Text('Announcement..'),
            trailing: Switch(
              value: true,
              onChanged: null,
            ),
          ),
          ListTile(
            title: Text('Email Notifications'),
            subtitle: Text('Announcement..'),
            trailing: Switch(
              value: false,
              onChanged: null,
            ),
          ),
          ListTile(
            title: Text('Terms & Condition'),
          ),
          ListTile(
            title: Text('Privacy Policy'),
          )
        ],
      ),
    );
  }
}
