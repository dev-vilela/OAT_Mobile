import 'package:flutter/material.dart';
import 'package:flutter_invest/repositories/repository_acoes.dart';

class AcoesPage extends StatelessWidget {
  const AcoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = AcoesRepository.tabela;
    return Scaffold(
        appBar: AppBar(
          title: Text('InVest World'),
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int acoes) {
            return ListTile(
              leading: Image.asset(tabela[acoes].icone),
              title: Text(tabela[acoes].nome),
              trailing: Text(tabela[acoes].preco.toString()),
            );
          },
          padding: EdgeInsets.all(16),
          
          separatorBuilder: (_, ___) => Divider(),
          itemCount: tabela.length,
        ));
  }
}
