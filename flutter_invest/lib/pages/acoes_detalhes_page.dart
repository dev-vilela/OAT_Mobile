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
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Bem-vindos a InVest World",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Text("Para mais detalhes sobre as ações, faça seu login."),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.person)),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Senha",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.person),
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Login",
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        )
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(onPressed: () {}, child: Text("Esqueceu a senha?"));
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Não tem uma conta?"),
        TextButton(onPressed: () {}, child: Text("Inscrever-se")),
      ],
    );
  }
}
