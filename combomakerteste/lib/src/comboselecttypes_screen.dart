import 'package:flutter/material.dart';


class CombosSelectType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Tipos de Combo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
            onPressed: (){},
              child: Stack(
                children: <Widget>[
                  Image.asset("images/StaticButton.png",fit: BoxFit.cover,),
                  Text("Teste")

                ],

              ),


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
