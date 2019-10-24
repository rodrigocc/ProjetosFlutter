import 'package:combomakerteste/menu_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(

        child:Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  "Teste"
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Email"
                ),

              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: ("Senha")
                  ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child:RaisedButton(
                  child:
                  Text("Login"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(Context) => MenuStartPage()));
                  },
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
