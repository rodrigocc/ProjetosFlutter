import 'package:combomakerteste/widgets/appbar.dart';
import 'package:combomakerteste/widgets/bottomnavigationbar.dart';
import 'package:flutter/material.dart';






class MovementsViewScreen extends StatefulWidget {
  @override
  _MovementsViewScreenState createState() => _MovementsViewScreenState();
}


class _MovementsViewScreenState extends State<MovementsViewScreen> {

  List _ListMovements = [""]; //Criando uma Lista Vazia


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:buildAppBar("Meus Movimentos",false),
      bottomNavigationBar: buildBottomNavigation(context),

      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[


          ],
        ) ,
      ),


    );
  }
}
