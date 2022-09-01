import 'package:flutter/material.dart';
import 'DashPage.dart';


class uploaded extends StatefulWidget {
  const uploaded({Key? key}) : super(key: key);

  @override
  State<uploaded> createState() => _uploadedState();
}

class _uploadedState extends State<uploaded> {
  Color? w = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
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
                            fontSize: 25,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.white
                        ),
                      ),
                      Text("EmailofUser@gmail.com",
                        style: TextStyle(
                            fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.normal,color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,8.0,20.0,8.0),
                child: Column(
                  children: [
                    Text('UPLOADED PLANT',style: TextStyle(fontSize: 25.0,color: w),),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        ImageIcon(AssetImage('assets/images/plant.png'),color: w,size: 33.0,),
                        SizedBox(width: 10.0),
                        Text('Plant Details',style: TextStyle(fontSize: 22.0, color: w),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Common Name:',style: TextStyle(fontSize: 20.0, color: w, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 20.0),
                        Text("Plant's Name",style: TextStyle(fontSize: 20.0, color: w),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Location:',style: TextStyle(fontSize: 20.0, color: w, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 20.0),
                        Text("Plant's Location",style: TextStyle(fontSize: 20.0, color: w),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Picture:',style: TextStyle(fontSize: 20.0, color: w, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Image(image: AssetImage('assets/images/Oregano.jpg'),
                      width: 280.0,
                      height: 280.0,
                    ),
                    RaisedButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>dashboard()));
                      },
                      color: Colors.green.shade900,
                      child: Text("Upload",style: TextStyle(fontSize: 20.0, color: w),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}