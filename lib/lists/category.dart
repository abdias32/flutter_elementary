import 'package:flutter/material.dart';

class Category {
  Category({
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.color,
  });

  final String title;
  final String subTitle;
  final IconData icon;
  final Color color;
}

final categories = <Category>[
  Category(
      title: 'Empresa',
      subTitle: '🚀 Propósito',
      icon: Icons.public,
      color: Colors.black87),
  Category(
      title: 'Ingeniería',
      subTitle: '💻 Producto',
      icon: Icons.engineering,
      color: Colors.green),
  Category(
      title: 'Habilidades',
      subTitle: '🚴 Constancia',
      icon: Icons.self_improvement,
      color: Colors.blue),
  Category(
      title: 'Contenido',
      subTitle: '🎯 Crear',
      icon: Icons.emoji_symbols,
      color: Colors.purple),
  Category(
      title: 'Comunidad',
      subTitle: '👪 Principios',
      icon: Icons.groups,
      color: Colors.orange),
  Category(
      title: 'Lecturas',
      subTitle: '📚 Aprendizaje',
      icon: Icons.book,
      color: Colors.brown),
  Category(
      title: 'English',
      subTitle: '💬 Oportunidad',
      icon: Icons.g_translate,
      color: Colors.red),
];
