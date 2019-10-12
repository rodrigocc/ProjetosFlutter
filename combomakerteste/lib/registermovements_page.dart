import 'package:flutter/material.dart';




class RegisterMovements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Qual movimento você deseja Cadastrar?",style: TextStyle(fontSize: 20.0),),
            ListView(
            ),
            RaisedButton(
              child: Text(
                "Cadastrar Movimentos",style: TextStyle(fontSize: 20.0),
              ),
              onPressed: (){},

            )
          ],
        ),
      ),
    );
  }
}
