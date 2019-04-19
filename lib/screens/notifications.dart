import 'package:flutter/material.dart';
import 'package:hello/widgets/drawer.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Container(
        child: Center(
          child: Text('Notifications'),
        ),
      ),
    );
  }
}
