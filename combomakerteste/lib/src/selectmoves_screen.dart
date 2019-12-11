import 'package:combomakerteste/widgets/appbar.dart';
import 'package:combomakerteste/widgets/bottomnavigationbar.dart';
import 'package:flutter/material.dart';
import 'cadastros/registermovements_screen.dart';
import 'cadastros/registerfreestylemovements_screen.dart';
import 'cadastros/registerpowermovements_screen.dart';




class SelectMovesTypesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
      ),
      bottomNavigationBar: buildBottomNavigation(context),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Escolha uma Categoria:",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            InkWell(
              splashColor: Colors.transparent,
              onTap: (){},
              child: Stack(
                children: <Widget>[
                  Image.asset("images/StaticButton.png"),
                  Text("Estáticos"),




                ],

              ),

            ),

            InkWell(
              splashColor: Colors.transparent,
              onTap: (){},
              child: Stack(
                children: <Widget>[
                  Image.asset("images/CategoryFreestyle.png"),
                  Text("Freestyle"),



                ],

              ),

            ),
            InkWell(
              splashColor: Colors.transparent,
              onTap: (){},
              child: Stack(
                children: <Widget>[
                  Image.asset("images/CategoryFreestyle.png"),
                  Text("Freestyle"),


                ],

              ),

            ),

          ],),
      ),

    );
  }
}

