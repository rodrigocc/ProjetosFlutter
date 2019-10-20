import 'package:flutter/material.dart';


class CombosViewScreen extends StatefulWidget {
  @override
  _CombosViewScreenState createState() => _CombosViewScreenState();
}

class _CombosViewScreenState extends State<CombosViewScreen> {

  List _listcombos = [];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(

      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 10.0),
                  itemCount: _listcombos.length,
                  itemBuilder: (context,index){
                    return Row(
                      children: <Widget>[
                        Icon(Icons.find_in_page),

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

                },
              ),
            ),




          ],

        ),

      ),

    );
  }
}




