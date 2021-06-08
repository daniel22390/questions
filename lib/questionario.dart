import 'dart:ffi';

import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List perguntas;
  final int perguntaSelecionada;
  final void Function(int) onResponder;

  Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.onResponder});

  @override
  Widget build(BuildContext context) {
    List respostas = perguntas[perguntaSelecionada]['respostas'] as List;

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]["texto"].toString()),
        ...respostas
            .map((e) => Resposta(e["texto"], () => onResponder(e["nota"])))
            .toList()
      ],
    );
  }
}
