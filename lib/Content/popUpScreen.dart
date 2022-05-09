import 'package:flutter/material.dart';

class PopUpScreen extends StatefulWidget {
  const PopUpScreen({ Key? key }) : super(key: key);

  @override
  State<PopUpScreen> createState() => _PopUpScreenState();
}

class _PopUpScreenState extends State<PopUpScreen> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text('Adicionar Usuario')
        ),
      // titlePadding: EdgeInsets.all(10),
    );
  }
}