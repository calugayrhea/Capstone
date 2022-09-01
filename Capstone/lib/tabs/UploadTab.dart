import 'package:flutter/material.dart';

import '../Uploaded.dart';


class uploadtab extends StatefulWidget {
  const uploadtab({Key? key}) : super(key: key);

  @override
  State<uploadtab> createState() => _uploadtabState();
}

class _uploadtabState extends State<uploadtab> {
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
                  Text('UPLOAD PLANT',style: TextStyle(fontSize: 25.0,color: w),),
                  SizedBox(height: 5),
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
                  TextField(
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "Plant's Name",
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Location:',style: TextStyle(fontSize: 20.0, color: w, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "Plant's Location",
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
                  SizedBox(height: 10),
                  TextField(
                    maxLines: 6,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "Short Descriptions",
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Picture:',style: TextStyle(fontSize: 20.0, color: w, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 45.0),
                      Icon(Icons.camera_alt_outlined,color: w,size: 20.0,),
                      SizedBox(width: 10.0),
                      RaisedButton(
                        onPressed: (){},
                        color: Colors.green.shade900,
                        child: Text("Choose Image",style: TextStyle(fontSize: 20.0, color: w),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  RaisedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>uploaded()));
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
    );
  }
}