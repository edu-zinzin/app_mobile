import 'package:body_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class BodyApp extends StatefulWidget {
  const BodyApp({Key? key}) : super(key: key);

  @override
  State<BodyApp> createState() => _BodyAppState();
}

class _BodyAppState extends State<BodyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BodyApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: LoginPage(),
    );
  }
}
