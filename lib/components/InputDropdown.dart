import 'package:flutter/material.dart';

class InputDropdown extends StatefulWidget {
  final String titol;
  final TextEditingController? tecinput;

  const InputDropdown({Key? key, required this.titol, this.tecinput}) : super(key: key);

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
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 17, 255), // Fondo del contenedor
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                  dropdownColor: const Color.fromARGB(255, 0, 17, 255),
                  icon: const SizedBox.shrink(),
                  style: TextStyle(
                    color : Colors.tealAccent,
                    fontSize: 16,
                  ),
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                      // Asignar el valor al controlador
                      if (widget.tecinput != null) {
                        widget.tecinput!.text = newValue ?? ''; // Actualiza el controlador
                      }
                    });
                  },
                  hint: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Selecciona una opció',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'Mercuri', child: Text('Mercuri')),
                    DropdownMenuItem(value: 'Venus', child: Text('Venus')),
                    DropdownMenuItem(value: 'Terra', child: Text('Terra')),
                    DropdownMenuItem(value: 'Mart', child: Text('Mart')),
                    DropdownMenuItem(value: 'Júpiter', child: Text('Júpiter')),
                    DropdownMenuItem(value: 'Saturn', child: Text('Saturn')),
                    DropdownMenuItem(value: 'Urà', child: Text('Urà')),
                    DropdownMenuItem(value: 'Neptú', child: Text('Neptú')),
                    DropdownMenuItem(value: 'Plutó', child: Text('Plutó')),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  isExpanded: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Icon(
                  Icons.location_on,
                  color: selectedValue == null ? Colors.white : Colors.tealAccent,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
