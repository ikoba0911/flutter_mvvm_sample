import 'package:flutter/material.dart';
import 'package:flutter_mvvm_sample/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}
