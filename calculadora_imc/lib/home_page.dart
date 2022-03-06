import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _infotext = "Informe Seus dados";

  TextEditingController weightcontroller = TextEditingController();
  TextEditingController heightcontroller = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _resetFields() {
    weightcontroller.clear();
    heightcontroller.clear();
    setState(() {
      _infotext = "Informe seus Dados";
      _formKey = GlobalKey<FormState>();
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
          backgroundColor: Color.fromARGB(255, 59, 53, 114),
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
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(Icons.person_outline, size: 120.0, color: Colors.white),
                TextFormField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    cursorColor: Color.fromARGB(255, 236, 237, 238),
                    maxLength: 3,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Peso (KG)",
                        labelStyle: TextStyle(color: Colors.white)),
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                    controller: weightcontroller,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Informe seu Peso';
                      }
                      return null;
                    }),
                TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 3,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                  ],
                  cursorColor: Color.fromARGB(255, 236, 237, 238),
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 25),
                    labelText: "Altura (cm)",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  controller: heightcontroller,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Informe sua Altura';
                    }

                    return null;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
                  child: Container(
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _calculateimc();
                        }
                      },
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
          ),
        ));
  }
}
