import 'package:emsi_app/Components/menu.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/1.jpg"),
          radius: 80,
        ),
      ),
    );
  }
}
