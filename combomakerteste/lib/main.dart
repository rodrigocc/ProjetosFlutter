//RodrigoAsi_
import 'package:combomakerteste/login_screen.dart';
import 'package:flutter/material.dart';
import 'menu_startpage.dart'; // Importando a File Criada para a classe Menu
import 'dart:async';


//////////////////////////////////////MAIN////////////////////////////////////////////////


void main(){


  runApp(MaterialApp(
    home: SplashPage(),

  ),
  );
  
}

///////////////////////////////////CLASSE DA SPLASH SCREEN ///// /////////////////////////////////////

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {

    super.initState();
    Future.delayed(Duration(
      seconds: 3,
    ),(){
      Navigator.push(context, MaterialPageRoute(
        builder: (context)=>LoginScreen(),
      ));

    }
    );
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("Images/Framesplash.png",fit:BoxFit.fill,height: 200.0,),
            Text("Street Workout Combos",style: TextStyle(
              fontStyle: FontStyle.italic , fontSize: 30.0 ,fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),

    );
  }
}




