import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _infotext = "Informe Seus dados";

  TextEditingController weightcontroller =
      TextEditingController(); // Controlador do Peso
  TextEditingController heightcontroller =
      TextEditingController(); // Controlador da Áltura

  void _resetFields() {
    setState(() {
      weightcontroller.text = "";
      heightcontroller.text = "";
      _infotext = "Dados Resetados";
    });
  }

  void _calculateimc() {
    setState(() {
      double weight = double.parse(weightcontroller.text);
      double height = double.parse(heightcontroller.text) / 100;
      double imc = weight / (height * height);

      if (imc < 18.5) {
        _infotext = "Está Abaixo do Peso";
      } else if (imc >= 18.5 && imc <= 24.9) {
        _infotext = "Peso Está Normal";
      } else if (imc >= 25 && imc <= 29.9) {
        _infotext = "Está com sobrePeso";
      } else if (imc >= 30 && imc <= 34.9) {
        _infotext = "Obesidade Grau 1";
      } else if (imc >= 35 && imc <= 39.9) {
        _infotext = "Obesidade Grau 2 ";
      } else {
        _infotext = "Obesidade Grau 3";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("Calculadora de Imc"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: _resetFields,
            )
          ],
        ),
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.person_outline, size: 120.0, color: Colors.white),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Peso (KG)",
                    labelStyle: TextStyle(color: Colors.white)),
                style: TextStyle(color: Colors.white, fontSize: 25.0),
                controller: weightcontroller,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Altura (cm)",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                controller: heightcontroller,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
                child: Container(
                  height: 50.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    onPressed: _calculateimc,
                    child: Text(
                      "Calcular",
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),
              ),
              Text(
                _infotext,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              )
            ],
          ),
        ));
  }
}
