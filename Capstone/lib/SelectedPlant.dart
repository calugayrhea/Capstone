import 'package:flutter/material.dart';

class selectedplant extends StatefulWidget {
  const selectedplant({Key? key}) : super(key: key);

  @override
  State<selectedplant> createState() => _selectedplantState();
}

class _selectedplantState extends State<selectedplant> {
  Color? w = Colors.white;
  Color? g = Colors.green;

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/images/capspic.png'),
                      height: 70.0,
                      width: 70.0,
                    ),
                  ),
                  Text("Plant Medic Finder",
                    style: TextStyle(
                      fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.0),
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: w,
                    iconSize: 30.0,
                    onPressed: () {},
                  ),
                  Text("Selected Plant",style: TextStyle(fontSize: 20.0,color: w),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0,8.0,25.0,8.0),
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  height: 620.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(25.0),
                    color: w,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Selected Plant's Name",style: TextStyle(color: g),),
                          SizedBox(width: 148.0),
                          Icon(Icons.favorite_outline_rounded,color: g),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Image(
                        image: AssetImage('assets/images/Oregano.jpg'),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Text("Plant's Location",style: TextStyle(color: g),),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Text("Descriptions",style: TextStyle(color: g),),
                        ],
                      ),
                    ],
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
