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
                  "Boboi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "boy",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Api",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 150,
            height: 150,
            alignment: Alignment.center,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF00B4DB), // biru muda
                  Color(0xFFFFE000), // kuning cerah
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),

            child: Text(
              "Keren!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}