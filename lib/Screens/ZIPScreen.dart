import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ZIPS extends StatefulWidget {
  @override
  _ZIPSState createState() => _ZIPSState();
}

class _ZIPSState extends State<ZIPS> {
  final _auth=FirebaseAuth.instance;
  FirebaseUser LoggedInUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentuser();
  }

  void getCurrentuser()async{
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        LoggedInUser = user;
      }
    }
    catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
