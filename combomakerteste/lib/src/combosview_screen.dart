import 'package:combomakerteste/widgets/appbar.dart';
import 'package:combomakerteste/widgets/bottomnavigationbar.dart';
import 'package:flutter/material.dart';
import 'catalogs/catalogcomboslist_screen.dart';
import 'comboselecttypes_screen.dart';


class CombosViewScreen extends StatefulWidget {
  @override
  _CombosViewScreenState createState() => _CombosViewScreenState();
}

class _CombosViewScreenState extends State<CombosViewScreen> {

  List _listcombos = [];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(""
      ),
      bottomNavigationBar: buildBottomNavigation(context),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 10.0),
                  itemCount: _listcombos.length,
                  itemBuilder: (context,index){
                    return Row(
                      children: <Widget>[
                        Icon(Icons.find_in_page),

                      ],
                    );
                  }
              ),

            ),






          ],

        ),

      ),

    );
  }
}




