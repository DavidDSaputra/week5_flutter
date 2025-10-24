import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Methode MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Membuat aplikasi baru",
      home: MyHome(),
    );
  }
}

// method MyHome
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Container", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        actions: [
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.account_tree, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.ac_unit, color: Colors.white),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}