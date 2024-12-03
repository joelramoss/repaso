import 'package:flutter/material.dart';
import 'package:repaso/components/navegacio.dart';

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: Navegacio(title: "Star Trips - Configura el viatge", backcolor: Color.fromARGB(255, 1, 10, 90), colorText: Color.fromARGB(255, 1, 253, 241)),
      body: Center(
        child: Text("Pagina 2"),
      ),
    );
  }
}