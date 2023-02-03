import 'package:flutter/material.dart';
import 'package:flutter_application_5/screen/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Iniciar Sesion';

    return MaterialApp(
      title: appTitle,
      home: const Scaffold(body: login()),
    );
  }
}
