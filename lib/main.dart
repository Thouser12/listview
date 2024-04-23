import 'package:flutter/material.dart';
import 'package:listview/components/Contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListaPage(),
    );
  }
}

class ListaPage extends StatelessWidget {
  ListaPage({super.key});

  List<Contato> contatos = [
    Contato(nomeCompleto: 'Thomas', email: 'gmail'),
    Contato(nomeCompleto: 'Samoht', email: 'liamg'),
    Contato(nomeCompleto: 'Mastho', email: 'mailg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contatos'),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(backgroundColor: Color.fromRGBO(0, 0, 0, 0)),
            title: Text(contatos[index].nomeCompleto),
            subtitle: Text(contatos[index].email),
          );
        },
      ),
    );
  }
}
