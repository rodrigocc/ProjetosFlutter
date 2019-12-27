
import 'package:combomakerteste/src/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';
import 'package:combomakerteste/menubuttons/navigationbuttons/movementsview_screen.dart';
import 'package:combomakerteste/menubuttons/navigationbuttons/selectmoves_screen.dart';
import 'package:combomakerteste/menubuttons/navigationbuttons/settings/settingsbutton_screen.dart';

Widget buildBottomNavigation(context) {


  return SizedBox(




    child: GradientBottomNavigationBar(
      backgroundColorStart: Color(0xFF5A6BC6),
      backgroundColorEnd: Color(0xFF87CDEC),
      onTap: (index) {

        switch (index) {

          case 0:
            Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MenuStartPage()));
            break;

          case 1:

            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SelectMovesTypesPage()));
            break;
          case 2:

            Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MovementsViewScreen()));
           break;
          case 3:
            Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SettingsScreen() ));
            break;
          case 4:


        }
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Image.asset("icons/homeicon.png",width: 30.0,height: 30.0,),
            backgroundColor: Colors.lightBlue,
            title: Text("homeicon")),
        BottomNavigationBarItem(
            icon: Image.asset("icons/bar.png",width: 30.0,height: 30.0,),
            backgroundColor: Colors.white,
            title: Text("Bar icon")),
        BottomNavigationBarItem(
            icon: Image.asset('icons/ranks.png',width: 30.0,height: 30.0,),
            backgroundColor: Colors.white,
            title: Text("Ranks")),
        BottomNavigationBarItem(
            icon: Image.asset("icons/settingsicon.png",width: 30.0,height: 30.0,),
            backgroundColor: Colors.white,
            title: Text("settingsicon")),
      ],
    ),

  );

}
