import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/respostas.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  final List<Map<String, Object>> perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
    },
    {
      'texto': 'Qual é o seu animal favorita?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro']
    },
  ];
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      if (perguntaSelecionada < (perguntas.length - 1)) {
        perguntaSelecionada++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> respostas = [];

    for (String textoResposta
        in perguntas[perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(texto: textoResposta, onPressed: responder));
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Minha appbar'),
      ),
      body: Column(
        children: [
          Questao(texto: perguntas[perguntaSelecionada]['texto'].toString()),
          ...respostas
        ],
      ),
    ));
  }
}
