import 'package:flutter/material.dart';
import 'cadastros/registermovements_screen.dart';
import 'cadastros/registerfreestylemovements_screen.dart';
import 'cadastros/registerpowermovements_screen.dart';




class SelectMovesTypesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Que Tipo de movimento você Deseja Cadastrar?",style: TextStyle(fontSize: 20.0),),
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>RegisterMovements() ));
              },

              child: Text("Estáticos",style:TextStyle(backgroundColor: Colors.white,fontSize: 20.0),

              ),


            ),
            const SizedBox(width: 20.0,),
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>RegisterPowerMovements()));
              },
               child:
               Text("Dinâmicos de Força",style: TextStyle(
                   backgroundColor: Colors.white,fontSize: 20.0),),

            ),

            const SizedBox(width: 50.0,),
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>RegisterFreesytleMovements()));
              },
              child: Text("Freestyle",style: TextStyle(
                backgroundColor: Colors.white,fontSize: 20.0,
              ),),

            ),
          ],),
      ),

    );
  }
}

