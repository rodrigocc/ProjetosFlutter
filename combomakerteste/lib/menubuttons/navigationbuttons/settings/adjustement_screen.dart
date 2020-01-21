import 'package:combomakerteste/widgets/appbar.dart';
import 'package:flutter/material.dart';




class Adjustmentscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(""),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("CADASTRAR",style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,

              ),),
              TextField(

                decoration: InputDecoration(

                  hintText: "Nome"
                ),


              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "E-mail"
                ),

              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Senha atual"
                ),


              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Senha nova"

                ),

              ),
              Divider(
                color: Colors.transparent,

              ),
              SizedBox(
                width: 300.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  splashColor: Colors.transparent,
                  textColor: Colors.white,

                  color: Colors.black,
                  child: Text("ATUALIZAR"),
                  onPressed: (){},


                ),

              ),


            ],
          ),
        ),

      ),


    );
  }
}
