import 'package:flutter/material.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/QRScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LGS(),
    );
  }
}
