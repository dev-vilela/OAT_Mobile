import 'package:flutter/material.dart';
import 'package:flutter_invest/pages/acoespages.dart';


class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investimento',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AcoesPage(),
    );
  }
}
