import 'package:flutter/material.dart';


class RegisterMovements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Qual movimento estático você deseja Cadastrar?:",style: TextStyle(fontSize: 20.0),),

          ],
        ),
      ),
    );
  }
}
