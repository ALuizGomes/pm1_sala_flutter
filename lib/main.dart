import 'package:flutter/material.dart';

void main() => runApp(const Review1());

class Review1 extends StatefulWidget {
  const Review1({Key? key}) : super(key: key);

  @override
  State<Review1> createState() => _Review1State();
}

class _Review1State extends State<Review1> {
  
  _appBar(String title, bool center, Color color) {
    return AppBar(
      title: Text(title),
      centerTitle: center,
      backgroundColor: color,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: _appBar('App de Cadastro', true, Colors.orange)
        )
      );
  }
}
