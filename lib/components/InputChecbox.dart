import 'package:flutter/material.dart';

class InputCheckbox extends StatefulWidget {
  final String titol;

  const InputCheckbox({
    Key? key,
    required this.titol,
  }) : super(key: key);

  @override
  _InputCheckboxState createState() => _InputCheckboxState();
}

class _InputCheckboxState extends State<InputCheckbox> {
  // Lista de opciones
  final List<String> _options = ['Negocis', 'Vacances'];
  
  // Lista para mantener el estado de los checkboxes
  List<bool> _selectedOptions = [false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.titol,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        // Contenedor para el estilo de fondo
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 17, 255), // Fondo del contenedor
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: _options.asMap().entries.map((entry) {
              int index = entry.key;
              String option = entry.value;
              return Row(
                children: [
                  Checkbox(
                    value: _selectedOptions[index],
                    side: BorderSide(
                        color: Colors.white,
                        width: 2), // Color del borde (blanco cuando no está seleccionado)
                    onChanged: (bool? value) {
                      setState(() {
                        // Aseguramos que solo una opción se seleccione
                        if (index == 0) {
                          _selectedOptions[0] = value!;
                          _selectedOptions[1] = false; // Desmarcar Vacances si Negocis es seleccionado
                        } else {
                          _selectedOptions[1] = value!;
                          _selectedOptions[0] = false; // Desmarcar Negocis si Vacances es seleccionado
                        }
                      });
                    },
                  ),
                  const SizedBox(width: 8),
                  Text(
                    option,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
