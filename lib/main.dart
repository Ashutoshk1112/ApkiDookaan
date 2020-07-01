import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/QRScreen.dart';
import 'Component/QRDetector.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScanPage(),
    );
  }
}
