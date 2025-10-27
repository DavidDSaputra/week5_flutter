import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplikasi Latihan Container",
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Container"),
        backgroundColor: Colors.blue,
        actions: [
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.account_tree),
          SizedBox(width: 10),
          Icon(Icons.ac_unit),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 150,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 0, 195, 255), // biru muda
                  Color.fromARGB(255, 255, 238, 0), // kuning
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "boboiboy air",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               
              ],
            ),
          ),

          Transform.rotate(
            angle: 5 * 3.14159 / 180,
            child: Container(
              width: 150,
              height: 150,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bbbgempa.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "bOBOIBOY",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "API",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          
                ],
              ),
            ),
          ),

          Transform.rotate(
            angle: -5 * 3.14159 / 180,
            child: Container(
              width: 150,
              height: 150,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 0, 195, 255),
                    Color.fromARGB(255, 255, 238, 0),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BOBOIBOY API",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                 
                
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}