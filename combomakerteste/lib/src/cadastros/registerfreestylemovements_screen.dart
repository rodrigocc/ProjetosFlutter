import 'package:flutter/material.dart';


class RegisterFreesytleMovements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Quais Movimentos de Freestyle você Deseja Cadastrar?",
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
          ],

        ),
      ),
    );
  }
}
