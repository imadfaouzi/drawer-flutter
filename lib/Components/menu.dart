import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(44, 62, 80, 1.0),
        child: ListView(
          children: [
            drawerHeader(),
            itemMenu(
                titre: "Home",
                icon: Icons.home,
                goto: () => Navigator.of(context).popAndPushNamed("/")),
            itemMenu(
                titre: "page1",
                icon: Icons.account_circle,
                goto: () => Navigator.of(context).popAndPushNamed("page1")),
            itemMenu(
                titre: "page2",
                icon: Icons.adb,
                goto: () => Navigator.of(context).popAndPushNamed("page2")),
            itemMenu(
                titre: "page3",
                icon: Icons.ac_unit,
                goto: () => Navigator.of(context).popAndPushNamed("page3")),
          ],
        ),
      ),
    );
  }
}

//---------------DrawerHeader-------------
DrawerHeader drawerHeader() {
  return DrawerHeader(
      decoration: BoxDecoration(color: Color.fromRGBO(87, 96, 111, 1.0)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.jpg"),
              radius: 60,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Flowers market",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment(1, 0.4),
            child: Text(
              "We are the best",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          )
        ],
      ));
}

//-----------------items---------------
Container itemMenu(
    {required String titre, required IconData icon, VoidCallback? goto}) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: ListTile(
      leading: Icon(
        icon,
        size: 20,
        color: Colors.white,
      ),
      title: Text(
        titre,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      onTap: goto,
    ),
  );
}
