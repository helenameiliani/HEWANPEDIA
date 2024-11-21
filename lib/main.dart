import 'package:flutter/material.dart';
import 'package:hewanpedia/login_page.dart';

void main() {
  runApp(HewanpediaApp());
}

class HewanpediaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hewanpedia',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}
