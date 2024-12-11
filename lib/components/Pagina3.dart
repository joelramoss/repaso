import 'package:flutter/material.dart';
import 'package:repaso/components/Navegacio.dart';

class Pagina3 extends StatelessWidget {
  final List info;

  const Pagina3({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200], // Color de fondo
      appBar: Navegacio(
        title: "Star Trips - Resultat",
        backcolor: Color.fromARGB(255, 0, 17, 255),
        colorText: Colors.tealAccent,
      ),
      body: Column( // El cuerpo de la página se coloca aquí
        children: [
          const SizedBox(height: 16), // Espacio superior,
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Número de columnas
                crossAxisSpacing: 8.0, // Espacio entre columnas
                mainAxisSpacing: 8.0, // Espacio entre filas
                childAspectRatio: 1.2, // Ajusta la proporción
              ),
              itemCount: info.length, 
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 17, 255), // Fondo azul
                    border: Border.all(
                      color: Colors.cyanAccent, // Borde celeste
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 3), // Sombra
                      ),
                    ],
                  ),
                  child: const Center(
                    child: SizedBox(), // Mantiene la estructura sin texto
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
