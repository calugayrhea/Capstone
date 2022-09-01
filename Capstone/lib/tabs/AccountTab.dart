import 'package:flutter/material.dart';
import '../main.dart';

class accounttab extends StatefulWidget {
  const accounttab({Key? key}) : super(key: key);

  @override
  State<accounttab> createState() => _accounttabState();
}

class _accounttabState extends State<accounttab> {

  Color? w = Colors.white;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Image(
                    image: AssetImage('assets/images/capspic.png'),
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Name of User ",
                      style: TextStyle(
                          fontSize: 25,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: w
                      ),
                    ),
                    Text("EmailofUser@gmail.com",
                      style: TextStyle(
                          fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.normal,color: w
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: w,
              ),
              width: 390.0,
              height: 45.0,
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0,8.0,20.0,8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('ACCOUNT',style: TextStyle(fontSize: 25.0,color: w),),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.account_circle_outlined,color: w,size: 33.0,),
                      SizedBox(width: 10.0),
                      Text('Personal Information',style: TextStyle(fontSize: 22.0, color: w),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Name:',style: TextStyle(fontSize: 20.0, color: w, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 45.0),
                      Icon(Icons.person,color: w,size: 20.0,),
                      SizedBox(width: 10.0),
                      Text("User's Fullname",style: TextStyle(fontSize: 20.0, color: w),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Phone number:',style: TextStyle(fontSize: 20.0, color: w, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 45.0),
                      Icon(Icons.phone,color: w,size: 20.0,),
                      SizedBox(width: 10.0),
                      Text("0912345678",style: TextStyle(fontSize: 20.0, color: w),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Home Address:',style: TextStyle(fontSize: 20.0, color: w, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 45.0),
                      Icon(Icons.home_outlined,color: w,size: 20.0,),
                      SizedBox(width: 10.0),
                      Text("#123 Brgy. Mamarlao SCCP.",style: TextStyle(fontSize: 20.0, color: w),),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Email:',style: TextStyle(fontSize: 20.0, color: w, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 45.0),
                      Icon(Icons.email,color: w,size: 20.0,),
                      SizedBox(width: 10.0),
                      Text("EmailofUser@gmail.com",style: TextStyle(fontSize: 20.0, color: w),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    child: Text("Log Out", style: TextStyle(color: Colors.white, fontSize: 25),),
                    padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                    color: Colors.red,
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>loginpage()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}