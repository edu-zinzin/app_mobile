import 'package:body_app/pages/alimentacao_page.dart';
import 'package:body_app/pages/diario_page.dart';
import 'package:body_app/pages/exercicio_page.dart';
import 'package:body_app/pages/relatorio_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          DiarioPage(),
          AlimentacaoPage(),
          ExerciciosPage(),
          RelatorioPage()
        ],
        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaAtual,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Diário'),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined), label: 'Alimentação'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center_outlined), label: 'Exercícios'),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_online_outlined), label: 'Relatórios'),
        ],
        onTap: (pagina) {
          pc.animateToPage(
            pagina,
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
        // backgroundColor: Colors.grey[100],
      ),
    );
  }
}
