 import 'package:flutter/material.dart';

 Widget buildAppBar(){

  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,



    title: Image.asset("images/KongWhite.png"),
    flexibleSpace: Container(
      decoration: BoxDecoration(
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
















