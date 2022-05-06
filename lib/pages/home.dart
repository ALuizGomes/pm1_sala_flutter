import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  // _addButton() {
  //   return FloatingActionButton(
  //     backgroundColor: Colors.orange,
  //     child: const Icon(Icons.add_outlined),      
  //     onPressed: () => showModalBottomSheet(
  //       context: context, 
  //       builder: (context) => Container(
  //         height: 200,
  //         color: Colors.white,
  //         child: Center(
  //           child: Column(
  //             children: [
  //               const TextField(
  //                 decoration: InputDecoration(
  //                   hintText: 'Nome',
  //                 ), 
  //               ),
  //               TextButton(
  //                 child: const Text('Registrar'),
  //                 onPressed: () => Navigator.pop(context),
  //               )
  //             ],
  //           ),
  //         )
  //       )
  //     )
  //   );
  // }

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
          // floatingActionButton: _addButton(),
          appBar: _appBar('App de Cadastro', true, Colors.orange),
          body: Container(
            color: Colors.lightBlue,
            child: Column(
              children: usuario.map((usr) => SingleChildScrollView(
                child: Column(
                  children: [
                    _cardForms(usr.nome, usr.cpf, usr.email),
                    ElevatedButton(
                      child: const Text('Adicionar'),
                      onPressed: () => showModalBottomSheet(
                        context: context, 
                        builder: (BuildContext context) => Container(
                          height: 300,
                          child: Center(
                            child: Column(
                              children: [
                                const Text('Seu Modal Aqui')
                              ],
                            ),
                          ),
                        )
                      ),
                    )
                  ],
                ),
              )
            ).toList()),
          )
        )
      );
  }
}
