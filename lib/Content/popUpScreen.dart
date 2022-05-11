import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PopUpScreen extends StatefulWidget {
  const PopUpScreen({ Key? key }) : super(key: key);

  @override
  State<PopUpScreen> createState() => _PopUpScreenState();
}

class _PopUpScreenState extends State<PopUpScreen> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        children: const [
          TextField(
            decoration: InputDecoration(
              hintText: 'Nome:',
              border: OutlineInputBorder()
            ),
          )
        ],
      ),
      title: Center(
        child: SizedBox(
          child: Text('Adicionar Usuario')
          )
        ),
      titlePadding: EdgeInsets.all(10),
      // titleTextStyle: TextStyle(),
    );
  }
}