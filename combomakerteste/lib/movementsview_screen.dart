import 'package:flutter/material.dart';





class MovementsViewScreen extends StatefulWidget {
  @override
  _MovementsViewScreenState createState() => _MovementsViewScreenState();
}


class _MovementsViewScreenState extends State<MovementsViewScreen> {
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
            ListView(
              children: <Widget>[

              ],
            ),
            FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: (){},
            ),

          ],
        ) ,
      ),


    );
  }
}
