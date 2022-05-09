import 'package:flutter/material.dart';
import 'package:pm1_sala_flutter/Content/popUpScreen.dart';

import '../constructor/user_dummy.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _appBar(String title, bool center, Color color) {
    return AppBar(
      title: Text(title),
      centerTitle: center,
      backgroundColor: color,
      elevation: 20,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );
  }

  _addButton() {
    return FloatingActionButton(
      elevation: 20,
      backgroundColor: Colors.orange,
      child: const Icon(Icons.add_outlined),      
      onPressed: () => showDialog(
        context: context,
        builder: (_) => const PopUpScreen(),
      )
    );
  }

  _cardForms(String nome, String cpf, String email) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
        ),
      child: ListTile(
        title: Text(
          nome,
          style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        subtitle: Text(email),
        trailing: Text(cpf),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: _addButton(),
          appBar: _appBar('App de Cadastro', true, Colors.orange),
          body: Container(
            color: Colors.lightBlue,
            child: Column(
              children: usuario.map((usr) => SingleChildScrollView(
                child: Column(
                  children: [
                    _cardForms(usr.nome, usr.cpf, usr.email),
                  ],
                ),
              )
            ).toList()),
          )
        )
      );
  }
}
