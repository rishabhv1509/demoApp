import 'package:flutter/material.dart';
import 'package:hello/widgets/drawer.dart';

class MyWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print('object'),
      ),
      drawer: drawer(context),
      appBar: AppBar(
        title: Text(
          'My Wallet',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size(size.width, 40),
          child: Column(
            children: <Widget>[
              Text(
                '0.0',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Current Wallet balance',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
