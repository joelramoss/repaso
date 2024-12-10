import 'package:flutter/material.dart';

class InputCheckbox extends StatefulWidget {
  final String titol;
  final List<String> options;

  const InputCheckbox({
    Key? key,
    required this.titol,
    required this.options, // Lista de opciones para el checkbox
  }) : super(key: key);

  @override
  _InputCheckboxState createState() => _InputCheckboxState();
}

class _InputCheckboxState extends State<InputCheckbox> {
  List<bool> _selectedOptions = [];

  @override
  void initState() {
    super.initState();
    // Inicializamos todos los checkboxes como no seleccionados
    _selectedOptions = List<bool>.filled(widget.options.length, false);
  }

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
        // Usamos un Container con decoración para que se vea el fondo del cuadro
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 17, 255), // Fondo del contenedor
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: widget.options.asMap().entries.map((entry) {
              int index = entry.key;
              String option = entry.value;
              return Row(
                children: [
                  Checkbox(
                    value: _selectedOptions[index],
                    onChanged: (bool? value) {
                      setState(() {
                        _selectedOptions[index] = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 8),
                  // El texto de la opción
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
