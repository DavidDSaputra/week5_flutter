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
      title: "Latihan Container",
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
          Icon(Icons.ac_unit),
          SizedBox(width: 20),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 20),

        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text("Ini adalah teks di dalam container"),
      ),
    );
  }
}