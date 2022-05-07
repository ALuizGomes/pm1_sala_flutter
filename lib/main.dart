import 'package:flutter/material.dart';

import 'package:pm1_sala_flutter/pages/home.dart';
// import 'package:pm1_sala_flutter/pages/teste.dart';

void main() => runApp(const Review1());

class Review1 extends StatefulWidget {
  const Review1({Key? key}) : super(key: key);

  @override
  State<Review1> createState() => _Review1State();
}

class _Review1State extends State<Review1> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
      );
  }
}
