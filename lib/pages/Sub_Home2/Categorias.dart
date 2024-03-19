import 'package:flutter/material.dart';

class Categorias extends StatelessWidget {
  final String categorias;
  final bool isSelected;
  final VoidCallback onTap;

  Categorias({
    required this.categorias,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          categorias,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.green : Colors.white,
          ),
        ),
      ),
    );
  }
}
