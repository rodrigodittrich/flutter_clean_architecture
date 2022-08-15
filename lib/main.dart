import 'package:flutter/material.dart';
import 'package:frontend/app/core/app.dart';
import 'package:frontend/app/core/inject/inject.dart';

main() async {
  Inject.init();
  runApp(const App());
}