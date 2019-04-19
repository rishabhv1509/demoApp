import 'package:flutter/material.dart';
import 'package:hello/newRequest.dart';
import 'package:hello/screens/homepage.dart';
import 'package:hello/screens/notifications.dart';
import 'package:hello/screens/orders.dart';
import 'package:hello/screens/settings.dart';
import 'package:hello/screens/wallet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.amber),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/orders": (BuildContext context) => Orders(),
        "/settings": (BuildContext context) => Settings(),
        "/notifications": (BuildContext context) => Notifications(),
        "/mywallet": (BuildContext context) => MyWallet(),
      },
    );
  }
}

// class Drawer extends StatelessWidget{
//   @override
//   Widget build (BuildContext context){
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Daawer"),
//         elevation: defaultTargetPlatform==TargetPlatform.android?5.0:0.8,
//       ),
//       drawer: new
//       body:new Container(
//         child: new Center(
//           child:new Text("Home Page")
//         ),
//       )
//       );
//   }
// }
