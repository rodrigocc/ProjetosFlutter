import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

////////////////////////////////////////////////

class MenuStartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "Images/MenuStartTeste.png",
          fit: BoxFit.cover,
          height: 1000.0,
          width: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 100.0,top: 100.0,left: 80.0),
              child:Text(
                "Bem Vindo Seu Nome",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ) ,
            ),
            Padding(
              padding: EdgeInsets.all(50.0),

              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "Cadastrar Movimentos",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(50.0),
              child:RaisedButton(
                onPressed: () {},
                child: Text(
                  "Ver Meus Movimentos ",
                  style: TextStyle(fontSize: 20.0),
                ),
              ) ,
            ),

            Padding(
              padding: EdgeInsets.all(50.0),
              child:
              RaisedButton(
                onPressed: () {},
                child: Text(
                  " Meus Combos  ",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
