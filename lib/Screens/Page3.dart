import 'package:flutter/material.dart';

import '../Components/menu.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);
  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/3.jpg"),
          radius: 80,
        ),
      ),
    );
  }
}
