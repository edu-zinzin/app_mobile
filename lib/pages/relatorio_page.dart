import 'package:flutter/material.dart';

class RelatorioPage extends StatefulWidget {
  RelatorioPage({Key? key}) : super(key: key);

  @override
  _RelatorioPageState createState() => _RelatorioPageState();
}

class _RelatorioPageState extends State<RelatorioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relatórios'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
