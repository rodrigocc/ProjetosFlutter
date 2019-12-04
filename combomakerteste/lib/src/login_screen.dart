import 'package:combomakerteste/src/menu_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/Kong.png",
                fit: BoxFit.fill,
                height: 150.0,
              ),

              Text(
                "Calisthenics Combos",
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(hintText: "Username :"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(hintText: "Password :"),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 200.0),
                child: Text(
                  "FORGOT YOU PASSWORD ?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.0),
                ),
              ),

              SizedBox(
                width: 330.0,
                child: RaisedButton(
                  color: Colors.lightBlueAccent,
                  splashColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => MenuStartPage()));
                  },
                ),
              ),

//

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150.0,
                      height: 30.0,
                      child: RaisedButton(
                        color: Colors.blue,
                        splashColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          "FACEBOOK",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150.0,
                    height: 30.0,
                    child: RaisedButton(
                      color: Colors.red,
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        "GOOGLE",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
