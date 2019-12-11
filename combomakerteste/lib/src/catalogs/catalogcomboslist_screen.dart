import 'package:flutter/material.dart';

class CatalogListMovements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: (Text("Catalogo de Movimentos")),
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Back Lever"),
              color: Colors.black,

            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Front Lever"),
              color: Colors.black,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Hefesto"),
              color: Colors.black,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Planche"),
              color: Colors.black,

            ),

          ],
        ),
      ),
    );
  }
}
