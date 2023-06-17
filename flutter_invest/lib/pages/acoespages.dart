import 'package:flutter/material.dart';
import 'package:flutter_invest/repositories/repository_acoes.dart';
// ignore: unused_import
import 'package:intl/intl.dart';

import '../models/acoes_model.dart';
import 'acoes_detalhes_page.dart';

// ignore: must_be_immutable
class AcoesPage extends StatefulWidget {
  AcoesPage({Key? key}) : super(key: key);

  @override
  State<AcoesPage> createState() => _AcoesPageState();
}

class _AcoesPageState extends State<AcoesPage> {
  final tabela = AcoesRepository.tabela;

  NumberFormat real = NumberFormat.currency(locale: 'pt-br', name: 'R\$');

  List<Acoes> selecionadas = [];

  mostrarDetalhes(Acoes acoes) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AcoesDetalhesPage(acoes: acoes),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('InVest AÇÕES'),
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int acoes) {
            return ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              leading: (selecionadas.contains(tabela[
                      acoes])) //Função usada para por os checks, quando estiver selecionada
                  ? CircleAvatar(
                      child: Icon(Icons.check),
                    )
                  : SizedBox(
                      // ignore: sort_child_properties_last
                      child: Image.asset(tabela[acoes].icone),
                      width: 80,
                    ),
              title: Text(
                tabela[acoes].nome,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(real.format(tabela[acoes].preco)),
              selected: selecionadas.contains(tabela[acoes]),
              selectedTileColor: Color(0xFF8795EE),
              onLongPress: () {
                //Selecionar os items, segura com o cursor em cima por uns segundos!
                setState(() {
                  (selecionadas.contains(tabela[acoes]))
                      ? selecionadas.remove(tabela[acoes])
                      : selecionadas.add(tabela[acoes]);
                });
              },
              onTap: () => mostrarDetalhes(tabela[acoes]),
            );
          },
          // ignore: prefer_const_constructors
          padding: EdgeInsets.all(16),
          separatorBuilder: (_, ___) => Divider(),
          itemCount: tabela.length,
        ));
  }
}
