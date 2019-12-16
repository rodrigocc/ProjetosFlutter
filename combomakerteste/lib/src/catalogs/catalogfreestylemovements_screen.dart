import 'package:flutter/material.dart';

class FreestyleList extends StatefulWidget {
  @override
  _FreestyleListState createState() => _FreestyleListState();
}

class _FreestyleListState extends State<FreestyleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: PageView(
      ),
    );
  }
}
