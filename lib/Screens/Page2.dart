import 'package:flutter/material.dart';

import '../Components/menu.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/2.jpg"),
          radius: 80,
        ),
      ),
    );
  }
}
