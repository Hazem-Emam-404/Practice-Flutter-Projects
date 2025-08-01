import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          leading: Icon(Icons.facebook, color: Colors.white, size: 30),
          title: Text("Facebook", style: TextStyle(color: Colors.white)),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10),
          child: Center(
            child: Container(
              width: 300,
              height: 500,
              decoration: BoxDecoration(
                color: Color(0xFFE8EAF6),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: NetworkImage(
                        "https://t4.ftcdn.net/jpg/04/31/64/75/360_F_431647519_usrbQ8Z983hTYe8zgA7t1XVc5fEtqcpa.jpg",
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person , color: Colors.indigo,),
                    title: Text("Hazem Ahmed Mohamed",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text("Software Engineer - Flutter developer", style: TextStyle(fontSize: 14, color: Colors.grey[700])),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.email, color: Colors.indigo,),
                    title: Text("hemam8560@gmail.com", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.phone,color: Colors.indigo,),
                    title: Text("+20 1120071030", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
