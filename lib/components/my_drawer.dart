import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      // ignore: deprecated_member_use
      backgroundColor:Color.fromARGB(255, 245, 239, 239),
      child: Column(
        children: [
          //app logo
        Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: Icon(
            Icons.lock_open_rounded,
            size: 40,
          ),
        )
          //home list tile


          //settings list tile


          //logout list tile
        ],
      ),
    );
  }
}