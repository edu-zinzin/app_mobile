import 'package:body_app/pages/alimentos_cadastro_page.dart';
import 'package:flutter/material.dart';

class AlimentacaoPage extends StatefulWidget {
  AlimentacaoPage({Key? key}) : super(key: key);

  @override
  _AlimentacaoPageState createState() => _AlimentacaoPageState();
}

class _AlimentacaoPageState extends State<AlimentacaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alimentos'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlimentosCadastroPage(),
            ),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
