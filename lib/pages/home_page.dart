import 'package:app_refeicao/data/categorias_data.dart';
import 'package:app_refeicao/models/categorias_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vamos Cozinhar ?'),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 17,
        mainAxisSpacing: 17,
        crossAxisCount: 2,
        children: categorias.map((e) => CategoriaItem(e)).toList(),
      ),
    );
  }
}
