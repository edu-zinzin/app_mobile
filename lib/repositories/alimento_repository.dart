import 'package:body_app/models/alimento.dart';

class AlimentoRepository {
  static List<Alimento> tabela = [
    Alimento(
        nome: 'Banana Prata',
        quantidade: 100,
        calorias: 99,
        carboidratos: 25.80,
        gordura: 0.3,
        proteinas: 1.3,
        foto: "lib/images/bananaprata.jpg"),
    Alimento(
        nome: 'Melancia',
        quantidade: 100,
        calorias: 33,
        carboidratos: 8.1,
        gordura: 0,
        proteinas: 0.9,
        foto: "lib/images/melancia.jpg"),
  ];
}
