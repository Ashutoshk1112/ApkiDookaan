import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'ZIPScreen.dart';
class RGS extends StatefulWidget {
  @override
  _RGSState createState() => _RGSState();
}

class _RGSState extends State<RGS> {
  final _auth= FirebaseAuth.instance;
  int e=0;
  String email;
  String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(left: 16,right: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10.0,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      child: Text(
                        'SignIn',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 15,
                          color: const Color(0x78404040),
                          fontWeight: FontWeight.w700,
                          shadows: [
                            Shadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(80.0, 12.0),
                        child: Container(
                          width: 55.0,
                          height: 55.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.elliptical(27.5, 27.5)),
                            color: const Color(0xcf7f1cff),
                          ),
                        ),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 35,
                          color: const Color(0xff404040),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 30.0,),
                    ],
                  ),

                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          onSaved: (value){
                            email=value;
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Email is Required';
                            }

                            if (!RegExp(
                                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                .hasMatch(value)) {
                              return 'Please enter a valid email Address';
                            }
                            if (e==1){
                              return 'This Email is already used';
                            }

                            return null;
                          },
                          keyboardType:TextInputType.emailAddress ,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            labelText: "Email ID",
                            labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0x298742ff),
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 16,),
                        TextFormField(
                          onSaved: (value){
                            password=value;
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Password is Required';
                            }

                            return null;
                          },
                          textAlign: TextAlign.center,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0x298742ff),
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                        Transform.translate(
                          offset: Offset(-100.0, 9.0),
                          child: Container(
                            width: 29.0,
                            height: 29.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.elliptical(14.5, 14.5)),
                              color: const Color(0x697f1cff),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          child: FlatButton(
                            onPressed: () async{
                              try {
                                if (!_formKey.currentState.validate()) {
                                  return;
                                }

                                _formKey.currentState.save();
                                final newuser = await _auth
                                    .createUserWithEmailAndPassword(
                                    email: email, password: password);
                                if(newuser != null)
                                  {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ZIPS()));
                                  }

                              }
                                  catch(signUpError){
                                    if(signUpError is PlatformException) {
                                      if(signUpError.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
                                          e=1;
                                      }
                                    }
                                  }

                            },
                            padding: EdgeInsets.all(0),
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: const Color(0xff7f1cff),
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
                                child: Text("Create Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                        SizedBox(height: 16,),
                        Container(
                          height: 50,
                          width: double.infinity,
                          child: FlatButton(
                            onPressed: (){

                            },
                            color: Colors.indigo.shade50,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("images/facebook.png",height: 18,width: 18,),
                                SizedBox(width: 10,),
                                Text("Connect with Facebook",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          height: 50,
                          width: double.infinity,
                          child: FlatButton(
                            onPressed: (){},
                            color: Colors.indigo.shade50,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("images/google.png",height: 18,width: 18,),
                                SizedBox(width: 10,),
                                Text("Connect with Google",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 200.0,),
                        Container(
                          height: 50,
                          width: 192.0,
                          child: FlatButton(
                            onPressed: (){},
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

                                child: Text("Skip SignUp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
