import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/Kongsplash.png",
              fit: BoxFit.fill,
              height: 200.0,
            ),
            Text(
              "Calisthenics Combos",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Mansalva"),
            ),
          ],
        ),
      ),
    );
  }
}
