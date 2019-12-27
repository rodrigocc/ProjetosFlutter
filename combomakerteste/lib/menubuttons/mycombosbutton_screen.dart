import 'package:flutter/material.dart';









class MycombosScreen extends StatelessWidget {


    PageController combolistcontroller = new PageController();
     List combolist = [""
      ""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        controller: combolistcontroller ,
        children: <Widget>[
          ListTile(

          ),

        ],

      ),
    );
  }
}
