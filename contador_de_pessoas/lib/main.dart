import 'package:flutter/material.dart';


//Definindo

              void main() {
                runApp(MaterialApp(
                    title: "Contador de Pessoas",
                    home: HOME()
                )
                );

              }


              class HOME extends StatefulWidget {
                @override
                _HOMEState createState() => _HOMEState();
              }

              class _HOMEState extends State<HOME> {

                String infotext = "Aguarde....";


                int _pessoas = 0; // Definido para fazer a

                void contapessoas(int x){
                  setState(() {
                    _pessoas+= x;    // Sempre que for chamada a função vai ser mudado o estado da tela

                    if(_pessoas <0){
                      infotext = "Contagem Negativa";

                    }
                    else if(_pessoas <= 20){
                      infotext = "Pode Entrar!";
                    }
                    else{
                      infotext = "Lotado!";
                    }

                  });


                }

                @override
                Widget build(BuildContext context) {
                  return Stack(
                    children:<Widget>[
                      Image.asset("images/bar.jpg", fit: BoxFit.cover, height: 1000.0,
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Pessoas :$_pessoas", style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child:FlatButton(
                                  child: Text(
                                    "+1",style: TextStyle(color: Colors.amber,fontSize: 40.0),
                                  ),
                                  onPressed: (){
                                    contapessoas(1);},
                                ),
                              ),

                              Padding(
                                padding:EdgeInsets.all(10.0),
                                child: FlatButton(
                                  child: Text(
                                    "-1",style:TextStyle(color: Colors.amber,fontSize: 40.0),
                                  ),
                                  onPressed: (){
                                    contapessoas(-1);
                                  },
                                ),
                              ),

                            ],

                          ),

                          Text(
                            infotext,style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                          ),


                        ],
                      ),
                    ],
                  );

                }
              }

              
