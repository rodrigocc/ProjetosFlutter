import 'package:combomakerteste/widgets/appbar.dart';
import 'package:flutter/material.dart';

class PowerMovementsList extends StatefulWidget {
  @override
  _PowerMovementsListState createState() => _PowerMovementsListState();
}

class _PowerMovementsListState extends State<PowerMovementsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),

      ),
    );
  }
}
