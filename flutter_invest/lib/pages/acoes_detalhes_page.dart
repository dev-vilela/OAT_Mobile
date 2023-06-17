// ignore: unused_import
import 'package:flutter/material.dart';

import '../models/acoes_model.dart';

// ignore: must_be_immutable
class AcoesDetalhesPage extends StatefulWidget {
  Acoes acoes;

  AcoesDetalhesPage({Key? key, required this.acoes}) : super(key: key);

  // ignore: library_private_types_in_public_api
  _AcoesDetalhesPageState createState() => _AcoesDetalhesPageState();
}

class _AcoesDetalhesPageState extends State<AcoesDetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.acoes.nome),
        ),
        body: Container(
          color: Color.fromARGB(255, 60, 53, 87),
          child: Center(
            child: Text(
              'Eai, Vamos investir?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.orange,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ));
  }
}
