import 'package:combomakerteste/menu_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "Teste"
            ),
            TextField(
            ),
            TextField(),
            RaisedButton(
              child: Text("Login"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(Context) => MenuStartPage()));
              },
            ),
            RaisedButton(
              child: Text(""),
              onPressed: (){},
            ),
          ],
        ),

      ),

    );
  }
}
