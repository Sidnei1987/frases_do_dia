import 'dart:math';
import 'package:flutter/material.dart';
void main (){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Home(),
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Frase 1",
    "Frase 2",
    "Frase 3",
    "Frase 4",
    "Frase 5",
    "Frase 6",
    "Frase 7",
    "Frase 8",

  ];
  var _frasesGerada = "Clique abaixo para gerar uma frase!";
  void _gerarFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);
    print(numeroSorteado);

    setState(() {
      _frasesGerada = _frases[numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Frase do dia")),
        backgroundColor: Colors.red,
      ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            //width: double.infinity ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                Image.asset("images/logo.png"),
                Text(
                  _frasesGerada,
                  textAlign: TextAlign.justify ,
                  style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,

                  ),
                ),
                ElevatedButton(
                    child: Text (
                      "Nova Frase",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   onPressed: _gerarFrase,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  )

                  ) ,


              ],
            ),

          ),
        ),
    );
  }
}

