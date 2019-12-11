import 'package:combomakerteste/widgets/bottomnavigationbar.dart';
import 'package:flutter/material.dart';


class RegisterPowerMovements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

      ),
      bottomNavigationBar: buildBottomNavigation(context),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Quais Dinâmicos de Força Você Deseja Cadastrar:?",style:
              TextStyle(fontSize: 20.0),)
          ],

        ),
      ),

    );
  }
}
