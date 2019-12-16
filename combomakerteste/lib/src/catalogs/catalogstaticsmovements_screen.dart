import 'package:flutter/material.dart';

class StaticList extends StatefulWidget {
  @override
  _StaticListState createState() => _StaticListState();
}

class _StaticListState extends State<StaticList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(

      ),
    );
  }
}
