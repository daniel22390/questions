import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;
  final int pontuacao;
  final Function() onReiniciar;

  Resultado(this.texto, this.pontuacao, this.onReiniciar);

  String get message {
    if (pontuacao < 20) {
      return "Parabéns!";
    } else if (pontuacao < 30) {
      return "Você é bom!";
    } else if (pontuacao < 40) {
      return "Impressionante!";
    } else {
      return "Nível Jedi!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            message,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          onPressed: onReiniciar,
          child: Text("Reiniciar", style: TextStyle(fontSize: 18)),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
