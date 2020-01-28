import 'package:combomakerteste/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Adjustmentscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:

      buildAppBar("",true),


      backgroundColor: Colors.white,

      
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 170.0,top: 20.0),
              child: Text(
                "Ajustes",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Comfortaa"
                ),
              ),
            ),
            Divider(),

            SizedBox(
              height: 50.0,
              child:TextField(
                decoration: InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(),
                    hintText: "Nome"),
              ),
            ),

            Divider(),

            SizedBox(
              height: 50.0,
              child: TextField(
                decoration: InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(),
                    hintText: "E-mail"),
              ),
            ),
            Divider(),

            SizedBox(
              height: 50.0,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    hintText: "Senha atual"),
              ),
            ),
            Divider(),

            SizedBox(
              height: 50.0,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(

                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: "Senha nova"),
              ),
            ),
            Divider(
              color: Colors.transparent,
            ),
            SizedBox(
              width: 300.0,
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                splashColor: Colors.transparent,
                textColor: Colors.white,
                color: Colors.black,
                child: Text("ATUALIZAR",style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
