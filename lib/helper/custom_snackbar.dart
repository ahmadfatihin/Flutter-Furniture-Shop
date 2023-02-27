import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    CustomSnackBar(content: Text(text)),
  );
}

class CustomSnackBar extends SnackBar {
  final Duration duration;

  CustomSnackBar({
    required Widget content,
    this.duration = const Duration(seconds: 1),
  }) : super(content: content, duration: duration);
}
