import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ZIPS extends StatefulWidget {
  @override
  _ZIPSState createState() => _ZIPSState();
}

class _ZIPSState extends State<ZIPS> {

  final TextEditingController _controller = new TextEditingController();

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
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 25.0,right: 25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: <Widget>[
              SizedBox(height: 120.0),
             Align(
                 alignment: Alignment.topLeft,
                 child: Text('Hey Demo,',style: TextStyle(fontSize: 50.0,fontFamily: 'Lato',fontWeight: FontWeight.bold))),
              SizedBox(height: 100.0),
              Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('Please Enter Your Area',style: TextStyle(fontSize: 30.0,fontFamily: 'Lato',),textAlign: TextAlign.left,)),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('Zip/Pin Code',style: TextStyle(fontSize: 30.0,fontFamily: 'Lato'),textAlign: TextAlign.left,)),
                ],
              ),
              SizedBox(height: 50.0),
              Transform.translate(
                offset: Offset(-150.0, 9.0),
                child: Container(
                  width: 29.0,
                  height: 29.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.elliptical(14.5, 14.5)),
                    color: const Color(0x99FFD21C),
                  ),
                ),
              ),
              SizedBox(height:10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width:50.0,
                    padding: EdgeInsets.only(right: 5),
                    child: TextField(
                      autofocus: true,
                      style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'Lato'),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(

                          counterText: ""
                      ),
                      maxLength: 1,
                    ),
                  ),
                  Container(
                    width:50.0,

                    padding: EdgeInsets.only(left: 5,right: 5),
                    child: TextField(
                      autofocus: true,
//                      controller: _controller,
                      style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'Lato'),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(

                          counterText: ""
                      ),
                      maxLength: 1,
                    ),
                  ),
                  Container(
                    width:50.0,
                    padding: EdgeInsets.only(left: 5,right: 5),
                    child: TextField(
                      autofocus: true,
//                      controller: _controller,
                      style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'Lato'),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          counterText: ""
                      ),

                      maxLength: 1,
                    ),
                  ),
                  Container(
                    width:50.0,
                    padding: EdgeInsets.only(left: 5,right: 5),
                    child: TextField(
                      autofocus: true,
//                      controller: _controller,
                      style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'Lato'),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(

                          counterText: ""
                      ),
                      maxLength: 1,
                    ),
                  ),
                  Container(
                    width:50.0,
                    padding: EdgeInsets.only(left: 5,right: 5),
                    child: TextField(
                      autofocus: true,
//                      controller: _controller,
                      style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'Lato'),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(

                          counterText: ""
                      ),
                      maxLength: 1,
                    ),
                  ),
                  Container(
                    width:50.0,
                    padding: EdgeInsets.only(left: 5),
                    child: TextField(
                      autofocus: true,
//                      controller: _controller,
                      style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'Lato'),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(

                          counterText: ""
                      ),
                      maxLength: 1,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 80.0),
              Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('Now, We can show you',style: TextStyle(fontSize: 30.0,fontFamily: 'Lato'),textAlign: TextAlign.left,)),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('nearby outlets',style: TextStyle(fontSize: 30.0,fontFamily: 'Lato'),textAlign: TextAlign.left,)),
                ],
              ),
              SizedBox(height: 200.0),
              Container(
                height: 50,
                width: 192.0,
                child: FlatButton(
                  onPressed: (){

                  },
                  padding: EdgeInsets.all(0),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        image: AssetImage('images/Group8.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x298742ff),
                          offset: Offset(0, 4),
                          blurRadius: 42,
                        ),
                      ],
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints(maxWidth: double.infinity,minHeight: 50),

                      child: Text("Lets Start",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Lato',fontSize: 20.0),textAlign: TextAlign.center,),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
