import 'package:flutter/material.dart';


class CombosSelectType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("Tipos de Combo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
            onPressed: (){},
              child: Text("Dinâmico De Força",style: TextStyle(fontSize: 10),),


            ),
            RaisedButton(
              onPressed: (){},
              child: Text("Freestyle",style: TextStyle(fontSize: 10.0),),

            ),

            RaisedButton(
              child: Text("Estáticos",style: TextStyle(fontSize: 10.0),),
              onPressed: (){},
            ),


          ],
        ),

      ),
    );
  }
}
