import 'package:flutter/material.dart';
import 'categoria.dart';
import '../pages/receita_page.dart';
import 'package:page_transition/page_transition.dart';

class CategoriaItem extends StatelessWidget {
  const CategoriaItem(this.categoria, {super.key});

  final Categoria categoria;

  void _selectCategory(BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        child: ReceitaPage(categoria2: categoria),
        type: PageTransitionType.leftToRight,
        duration: const Duration(milliseconds: 400),
        reverseDuration: const Duration(milliseconds: 400),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              categoria.getColor.withOpacity(0.5),
              categoria.getColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            categoria.getTitle,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ),
    );
  }
}
