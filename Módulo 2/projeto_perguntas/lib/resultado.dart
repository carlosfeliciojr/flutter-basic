import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoTotal;
  final void Function() quandoReiniciarQuestionario;
  const Resultado(
      {Key? key,
      required this.pontuacaoTotal,
      required this.quandoReiniciarQuestionario})
      : super(key: key);

  String get fraseResultado {
    if (pontuacaoTotal < 8) {
      return 'Parabéns';
    } else if (pontuacaoTotal < 12) {
      return 'Você é bom!';
    } else if (pontuacaoTotal < 16) {
      return 'Impressionante!';
    } else {
      return 'Nivel Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 24, color: Colors.black87),
          ),
        ),
        TextButton(
            onPressed: quandoReiniciarQuestionario,
            child: Text(
              'Tentar novamente?',
            ))
      ],
    );
  }
}
