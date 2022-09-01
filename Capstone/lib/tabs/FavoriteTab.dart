import 'package:flutter/material.dart';

class favoritetab extends StatefulWidget {
  const favoritetab({Key? key}) : super(key: key);

  @override
  State<favoritetab> createState() => _favoritetabState();
}

class _favoritetabState extends State<favoritetab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  icon: Icon(Icons.menu),
                  iconSize: 30.0,
                  onPressed: () {},
                ),
                Text("Favorite Plants",style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}