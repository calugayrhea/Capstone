import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'DashPage.dart';
import 'SignupPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant Medic Finder',
      home: splashscreen(),
    );
  }
}
class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (ctx) => loginpage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/capspic.png'),
              width: 300.0,
            ),
            //SpinKitSquareCircle(color:Colors.red,size:50.0,),
          ],
        ),
      ),
    );
  }
}

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  TextEditingController email_address = TextEditingController();
  TextEditingController pass_word = TextEditingController();

  Future login() async {
    if(email_address.text == "" || pass_word.text == ""){
      Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: 'Please fill all fields',
        toastLength: Toast.LENGTH_SHORT,
      );
    }else{
      try{
        var url = Uri.http("192.168.0.109", '/system/signin.php',{'q':'{http}'});
        var res = await http.post(url,body: {
          "email_address":email_address.text,
          "pass_word":pass_word.text
        });
        var resp = jsonDecode(res.body);
        if(resp.toString() == "Success") {
          Fluttertoast.showToast(
            backgroundColor: Colors.green.shade900,
            textColor: Colors.white,
            msg: 'Login Successful',
            toastLength: Toast.LENGTH_SHORT,
          );
          Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => dashpage(),
            ),
          );
        } else {
          Fluttertoast.showToast(
            backgroundColor: Colors.orange,
            textColor: Colors.white,
            msg: 'Email and Password Invalid',
            toastLength: Toast.LENGTH_SHORT,
          );
        }
      }catch(e){
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/images/capspic.png'),
                        height: 80.0,
                        width: 80.0,
                      ),
                    ),
                    Text("Plant Medic Finder",
                      style: TextStyle(
                        fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                      child: Text("Sign In",
                        style: TextStyle(color: Colors.white,fontSize: 25),
                      ),
                      color:Colors.green.shade900,
                      onPressed:(){},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                      child: Text("Sign Up",
                        style: TextStyle(color: Colors.green,fontSize: 25),
                      ),
                      color:Colors.white,
                      onPressed:(){},
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 330,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            controller: email_address,
                            style: const TextStyle(color: Colors.black, fontSize: 16),
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  width: 50,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                            ),
                          ),
                          SizedBox(height: 5),
                          TextField(
                            controller: pass_word,
                            style: const TextStyle(color: Colors.black, fontSize: 16),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  width: 50,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      child: Text("Log In", style: TextStyle(color: Colors.white, fontSize: 25),),
                      padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                      color: Colors.green.shade900,
                      onPressed: (){
                        login();
                        //Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>dashpage(),));
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?", style: TextStyle(fontSize: 18,),),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>signuppage(),)),
                          child: const Text("Sign Up",
                            style: TextStyle(fontSize: 24,decoration: TextDecoration.underline, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}