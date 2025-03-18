import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class TagEntity extends Equatable {
  const TagEntity({
    required this.id,
    required this.title,
    required this.color,
    this.secondColor,
    this.icon,
  });

  final int id;
  final String title;
  final Color color;
  final String? secondColor;
  final String? icon;

  @override
  List<Object?> get props => [id];
}
