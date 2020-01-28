import 'package:combomakerteste/widgets/appbar.dart';
import 'package:flutter/material.dart';






class CreateAccountWithEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("",true),

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("Cadastrar",style: TextStyle(
              fontFamily: "Comfortaa"
            ),),

            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder:OutlineInputBorder(
                ),
                hintText: "E-mail",
              ),

            ),
            Divider(

            ),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: OutlineInputBorder(
                ),
                hintText: "Senha",


              ),

            ),
            Divider(

            ),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: OutlineInputBorder(
                ),
                hintText: "Repetir Senha"
              ),
            ),
            Divider(

            ),

            SizedBox(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                splashColor: Colors.transparent,
                textColor: Colors.white,
                color: Colors.black,
                child: Text("Cadastrar",style: TextStyle(
                ),),
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
