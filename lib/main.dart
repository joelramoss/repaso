import 'package:flutter/material.dart';
import 'package:repaso/components/pagina2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Pagina2(
          
        ),
        ),
      );
  }
}
