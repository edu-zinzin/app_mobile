import 'package:body_app/pages/exercicios_cadastro_page.dart';
import 'package:flutter/material.dart';

class ExerciciosPage extends StatefulWidget {
  ExerciciosPage({Key? key}) : super(key: key);

  @override
  _ExerciciosPageState createState() => _ExerciciosPageState();
}

class _ExerciciosPageState extends State<ExerciciosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercícios'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        //backgroundColor: Colors.cyanAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExercicioCadastroPage(),
            ),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
