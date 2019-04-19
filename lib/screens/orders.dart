import 'package:flutter/material.dart';
import 'package:hello/widgets/drawer.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: Container(
        child: Center(
          child: Text('Orders'),
        ),
      ),
    );
  }
}
