 import 'package:flutter/material.dart';

 Widget buildAppBar(title){

  return AppBar(


    automaticallyImplyLeading: false,



    title: Text(title,style: TextStyle(
      color: Colors.white,
    ),)  ,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.centerRight,

          image: AssetImage(
            "images/KongWhite.png"
          ),
        ),
        gradient: LinearGradient(
          colors: [
            Color(0xFF5A6BC6),
            Color(0xFF87CDEC),
          ]

        ),
      ),
    ),




  );





 }
















