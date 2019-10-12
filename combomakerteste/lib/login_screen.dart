import 'package:combomakerteste/menu_startpage.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          Text(
            ""
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

    );
  }
}
