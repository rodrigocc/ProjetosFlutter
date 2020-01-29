import 'package:flutter/material.dart';

Widget buildAppBar(title,flag) {
  return AppBar(
    automaticallyImplyLeading: flag,
    title: Text(
      title,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    flexibleSpace: Container(
      height: 150.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:23.0 ),
            child: Image.asset("images/gorilanew.png",height: 55.0,) ,
          )

        ],
      ),
      
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFF5A6BC6),
          Color(0xFF87CDEC),
        ]),
      ),
    ),
  );
}
