import 'package:flutter/material.dart';
import 'package:resultadoeleicao/core/inject/inject.dart';
import 'package:resultadoeleicao/features/home/presentation/ui/pages/home_page.dart';

void main() {
  Inject.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resultados Eleição',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
