import 'package:combomakerteste/src/menu_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(

        child:Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child:Image.asset(
                  "images/Kong.png",fit: BoxFit.fill,height: 150.0,
                ),
              ),

              Text(
                  "Calisthenics Combos",
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Username"
                ),

              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: "Password"
                  ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child:Text(
                  "FORGOT YOU PASSWORD ?",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 9.0
                ),
                ),
              ),



              Padding(
                padding: EdgeInsets.only(top: 10.0),

                child:
                RaisedButton(
                  color: Colors.lightBlueAccent,
                  child:
                  Text("LOGIN",style: TextStyle(color: Colors.white),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(Context) => MenuStartPage()));
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    child: Text("FACEBOOK",textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    onPressed: (){},


                  ),

                  Padding(
                    padding: EdgeInsets.only(left : 20.0),
                    child:     RaisedButton(
                      color: Colors.red,
                      child: Text("GOOGLE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,),
                      onPressed: (){},
                    ),

                  ),



                ],
              )

            ],
          ),
        ),
      ),

    );
  }
}
