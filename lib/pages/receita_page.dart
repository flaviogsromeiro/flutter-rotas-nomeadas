import 'package:app_refeicao/models/categoria.dart';
import 'package:flutter/material.dart';

class ReceitaPage extends StatelessWidget {
  const ReceitaPage({super.key, required this.categoria2});

  final Categoria categoria2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoria2.getTitle),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Receitas ${categoria2.getTitle}'),
      ),
    );
  }
}
