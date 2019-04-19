import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hello/login.dart';
import 'package:hello/newRequest.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.amber),
      home: new Login(),
      routes: <String, WidgetBuilder>{
        "/a": (BuildContext context) => new NewRequests("New Requests")
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
