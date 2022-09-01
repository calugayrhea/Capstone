import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class hometab extends StatefulWidget {
  const hometab({Key? key}) : super(key: key);

  @override
  State<hometab> createState() => _hometabState();
}

class _hometabState extends State<hometab> {
  Future<List> getallplants() async{
    var url = Uri.parse('http://192.168.0.109/system/allplants.php'); //Api Link
    final res = await http.get(url);
    return jsonDecode(res.body);
  }
  @override
  void initState() {
    getallplants();
    super.initState();
  }

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
            Padding(
              padding: const EdgeInsets.fromLTRB(35.0, 0, 35.0, 0),
              child: TextField(
                //controller: user,
                style: const TextStyle(color: Colors.black, fontSize: 16),
                decoration: InputDecoration(
                  hintText: 'Search Plant',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.search),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 40),
                IconButton(
                  icon: Icon(Icons.menu),
                  iconSize: 30.0,
                  onPressed: () {},
                ),
                Text("Medicinal Plants",style: TextStyle(fontSize: 20.0),
                ),
                Column(
                  children: [
                    FutureBuilder<List>(
                        future: getallplants(),
                        builder: (context,ss){
                          if(ss.hasError){
                            print(ss.error);
                          }
                          if(ss.hasData){
                            return items(list:ss.data!);
                          }else{
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class items extends StatelessWidget {
  List list;
  items({Key? key, required this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list==null?0:list.length,
        itemBuilder: (context,i){
          return ListTile(
            leading: const Icon(Icons.text_snippet_outlined),
            title: Text(list[i]['p_name'],style: TextStyle(color: Colors.white),),
            subtitle: Text(list[i]['p_location']),

          );
        }
    );
  }
}
