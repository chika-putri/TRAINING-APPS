import 'package:flutter/material.dart';

class ModelStore {
  final String imageUrl;
  final String text;
  final Color color; // Tambahkan parameter warna

  ModelStore({
    required this.imageUrl,
    required this.text,
    required this.color,
  });
}
