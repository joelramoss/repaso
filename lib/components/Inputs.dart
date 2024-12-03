import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  final String titol;
  final int indiceInput;
  final Color colobackgroundYText;
  final Color backinput;// Define el tipo de widget a mostrar

  const Inputs({
    Key? key,
    required this.titol,
    required this.indiceInput,
    required this.colobackgroundYText,
    required this.backinput,
  });

  @override
  Widget build(BuildContext context) {
    Widget contenido = const SizedBox(); 
    if (indiceInput == 1) {
      contenido = Row(
        children: [
          Text(titol),
          Checkbox(
            value: false, // Puedes cambiar esto dinámicamente
            onChanged: (bool? value) {
              print('Checkbox cambiado a $value');
              value = true;
            },
          ),
        ],
      );
    } else if (indiceInput == 2) {
      contenido = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titol),
          TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Escribe algo aquí',
              fillColor: backinput,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: backinput),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: backinput),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            style: TextStyle(color: colobackgroundYText),
          ),
        ],
      );
    } else if (indiceInput == 3) {
      contenido = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titol),
          DropdownButton<String>(
            value: 'Opción 1',
            items: const [
              DropdownMenuItem(value: 'Opción 1', child: Text('Opción 1')),
              DropdownMenuItem(value: 'Opción 2', child: Text('Opción 2')),
            ],
            onChanged: (String? newValue) {
              print('Dropdown seleccionado: $newValue');
            },
          ),
        ],
      );
    }
    
    return contenido;
  }
}
