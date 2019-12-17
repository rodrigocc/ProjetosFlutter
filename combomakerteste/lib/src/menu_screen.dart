import 'package:combomakerteste/menubuttons/mycombosbutton_screen.dart';
import 'package:combomakerteste/menubuttons/rankingsbutton_screen.dart';
import 'package:combomakerteste/widgets/appbar.dart';
import 'package:combomakerteste/widgets/bottomnavigationbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'selectmoves_screen.dart';
import 'combosview_screen.dart';
import 'movementsview_screen.dart';

////////////////////////////////////////////////

class MenuStartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar("Menu"),
      bottomNavigationBar: buildBottomNavigation(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bem Vindo Thomas Turbando",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20.0,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Stack(
                children: <Widget>[
                  InkWell(
                    child: Image.asset(
                      "images/ContainerMenuInicial.png",

                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RankingsScreen()));

                    },
                    splashColor:Colors.transparent ,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0,top: 150.0),
                    child: Text(
                      "Rankings",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.transparent,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Stack(
                children: <Widget>[
                  InkWell(
                    child: Image.asset("images/CardButtonMenuNew.png",),
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MycombosScreen()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90.0,top: 150.0),
                    child: Text(
                      "Meus Combos",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
