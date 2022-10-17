// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Categoria {
  // ATRIBUTOS

  String _id;
  String _title;
  Color _color;

  // GETTERS & SETTERS

  String get getId => _id;
  set id(String value) => _id = value;

  String get getTitle => _title;
  set title(String value) => _title = value;

  Color get getColor => _color;
  set color(Color value) => _color = value;

  // CONSTRUCTOR

  Categoria({
    required String id,
    required String title,
    required Color color,
  })  : _id = id,
        _title = title,
        _color = color;

  // TO STRING
  
  @override
  String toString() => 'Categoria(_id: $_id, _title: $_title, _color: $_color)';
}
