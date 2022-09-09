import 'package:flutter/material.dart';

//main feito por Bernardo Vale dos Santos Bento

void main() {
  runApp(MaterialApp(
      title: "Contador",
      home: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.pinimg.com/736x/64/e5/67/64e5670c1776966ac043074b83dfbf04.jpg")
          )
        ),
        child: Home(),
      )
    )
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _num_alunos = 0;
  String _texto = "Pode vir";

  void _mat(int delta){

    setState((){

      _num_alunos += delta;

      if(_num_alunos < 0){

        _num_alunos = 0;

      } else if(_num_alunos >= 36){

        _texto = "Lab cheio";

      } else if(_num_alunos >= 0 && _num_alunos < 36){

        _texto = "Pode vir";

      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Text("Alunos: $_num_alunos",
        style: TextStyle(color: Colors.green,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none),
      ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {_mat(1);},
                child: Text("+",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {_mat(-1);},
                  child: Text("-",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                )
            )
          ],
        ),
        Text("$_texto",
          style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none),
        ),
      ],
    );
  }
}

