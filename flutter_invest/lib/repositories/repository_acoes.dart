import '../models/acoes_model.dart';

class AcoesRepository {
  static List<Acoes> tabela = [
    Acoes(
      icone: 'images/Amazon.jpg',
      nome: 'Amazon',
      sigla: 'AMZN',
      preco: 30.45,
    ),
    Acoes(
      icone: 'images/Americanas.png',
      nome: 'Americanas',
      sigla: 'AMER3',
      preco: 1.26,
    ),
    Acoes(
      icone: 'images/MercadoLivre.png',
      nome: 'Mercado Livre',
      sigla: 'ML',
      preco: 48.10,
    ),
    
  ];
}
