import 'package:body_app/pages/exercicio_page.dart';
import 'package:flutter/material.dart';

class ExercicioCadastroPage extends StatefulWidget {
  ExercicioCadastroPage({Key? key}) : super(key: key);

  @override
  _ExercicioCadastroPageState createState() => _ExercicioCadastroPageState();
}

class _ExercicioCadastroPageState extends State<ExercicioCadastroPage> {
  String dropdownValue = 'Cardiovascular';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Exercicios'),
        centerTitle: true,
        //backgroundColor: Colors.cyanAccent,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("lib/images/playbutton.png"),
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: TextButton(
                child: Text(
                  "Selecione um vídeo do exercício",
                  textAlign: TextAlign.right,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Calorias",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Duração",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            DropdownButton(
                isExpanded: true,
                value: dropdownValue,
                items: [
                  DropdownMenuItem(
                    child: Text("Cardiovascular"),
                    value: "Cardiovascular",
                  ),
                  DropdownMenuItem(
                    child: Text("Fortalecimento"),
                    value: "Fortalecimento",
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    dropdownValue = value.toString();
                  });
                }),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0XFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Text(
                    "Adicionar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
