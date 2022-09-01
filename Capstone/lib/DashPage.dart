import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'tabs/AccountTab.dart';
import 'tabs/FavoriteTab.dart';
import 'tabs/HomeTab.dart';
import 'tabs/UploadTab.dart';

class dashpage extends StatefulWidget {
  const dashpage({Key? key}) : super(key: key);

  @override
  State<dashpage> createState() => _dashpageState();
}

class _dashpageState extends State<dashpage> {

  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (ctx) => dashboard()));
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
              width: 250.0,
            ),
            Text("Profile",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.greenAccent),),
            Text("Complete",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.greenAccent),),
            SizedBox(height: 20.0),
            SpinKitCircle(color:Colors.white,size:60.0,),
          ],
        ),
      ),
    );
  }
}

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  int _selectedindex = 0;

  void _navigatebottombar(int index){
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    hometab(),
    favoritetab(),
    uploadtab(),
    accounttab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedindex,
        onTap: _navigatebottombar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label:'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.upload),label:'Upload'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:'Account'),
        ],
      ),
      body: _pages[_selectedindex],
    );
  }
}