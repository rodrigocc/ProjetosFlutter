import 'package:flutter/material.dart';
import 'catalogmovementslist_screen.dart';





class MovementsViewScreen extends StatefulWidget {
  @override
  _MovementsViewScreenState createState() => _MovementsViewScreenState();
}


class _MovementsViewScreenState extends State<MovementsViewScreen> {

  List _ListMovements = [""]; //Criando uma Lista Vazia


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar:AppBar(
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(top:10.0),
                  itemCount: _ListMovements.length, // pegando o tamanho da lista
                  itemBuilder :(context,index){
                    return Row(
                      children: <Widget>[
                        TextField(
                        ),

                      ],

                    );

                  }
              ),

            ),

            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>CatalogListMovements()));

                },
              ),
            ),

          ],
        ) ,
      ),


    );
  }
}
