import 'package:flutter/material.dart';
import 'package:frontend/app/layers/presentation/ui/pages/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Exemplo App clean Dart with Spring",
        debugShowCheckedModeBanner: false,
        home: HomePage()
      );
  }
}