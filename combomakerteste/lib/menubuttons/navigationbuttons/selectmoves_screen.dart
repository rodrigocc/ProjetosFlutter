import 'package:combomakerteste/src/catalogs/catalogfreestylemovements_screen.dart';
import 'package:combomakerteste/src/catalogs/catalogpowermovements_screen.dart';
import 'package:combomakerteste/src/catalogs/catalogstaticsmovements_screen.dart';
import 'package:combomakerteste/widgets/appbar.dart';
import 'package:combomakerteste/widgets/bottomnavigationbar.dart';
import 'package:flutter/material.dart';




class SelectMovesTypesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar("Categorias"
      ),
      bottomNavigationBar: buildBottomNavigation(context),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Escolha uma Categoria:",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

            InkWell(
              splashColor: Colors.transparent,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FreestyleList()));
              },
              child: Stack(
                children: <Widget>[
                  Image.asset("images/FreestyleNew.png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 130.0,left: 60.0),
                    child: Text("Freestyle",style: TextStyle(
                      color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: "Roboto"
                    ),),
                  ),




                ],

              ),

            ),
            Divider(
              color: Colors.transparent,
            ),

            InkWell(
              splashColor: Colors.transparent,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StaticList()));
              },
              child: Stack(
                children: <Widget>[
                  Image.asset("images/StaticButton.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 130.0,top: 40.0),
                    child: Text("Estático",style: TextStyle(
                      color: Colors.white,fontSize: 20.0,fontFamily: "Roboto",fontWeight: FontWeight.bold
                    ),),
                  ),



                ],

              ),

            ),
            Divider(
              color:Colors.transparent,
            ),
            InkWell(
              splashColor: Colors.transparent,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PowerMovementsList()));

              },
              child: Stack(
                children: <Widget>[
                  Image.asset("images/PowerButton.png"),
                  Padding(
                    padding: const EdgeInsets.only(left:80.0,top: 40.0),
                    child: Text("Dinâmico de força ",style: TextStyle(
                      color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: "Roboto"
                    ),),
                  ),


                ],

              ),

            ),

          ],),
      ),

    );
  }
}

