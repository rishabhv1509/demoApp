import 'package:flutter/material.dart';
import 'package:hello/widgets/login.dart';
import 'package:hello/widgets/register.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Login'),
            bottom: TabBar(
              isScrollable: false,
              tabs: <Widget>[
                Tab(text: 'Login'),
                Tab(text: 'Register'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              login(context),
              register(context),
            ],
          )),
    );
  }
}
