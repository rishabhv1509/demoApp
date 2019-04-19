import 'package:flutter/material.dart';
import 'package:hello/widgets/drawer.dart';

class Requests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
    );
  }
}
