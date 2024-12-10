import 'package:flutter/material.dart';

class InputDropdown extends StatefulWidget {
  final String titol;

  const InputDropdown({Key? key, required this.titol}) : super(key: key);

  @override
  _InputDropdownState createState() => _InputDropdownState();
}

class _InputDropdownState extends State<InputDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.titol,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          height: 50, // Altura fija del contenedor
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 17, 255), // Fondo del contenedor
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              // DropdownButton expandido
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Selecciona una opció',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    dropdownColor: const Color.fromARGB(255, 0, 17, 255), // Color del menú desplegable
                    icon: const SizedBox.shrink(), // Oculta el ícono predeterminado
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items: const [
                      DropdownMenuItem(
                        value: 'Opcion 1',
                        child: Text('Opción 1'),
                      ),
                      DropdownMenuItem(
                        value: 'Opcion 2',
                        child: Text('Opción 2'),
                      ),
                      DropdownMenuItem(
                        value: 'Opcion 3',
                        child: Text('Opción 3'),
                      ),
                      DropdownMenuItem(
                        value: 'Opcion 4',
                        child: Text('Opción 4'),
                      ),
                    ],
                  ),
                ),
              ),
              // Icono a la derecha
              const Icon(
                Icons.location_on,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
