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
            color:
                const Color.fromARGB(255, 0, 17, 255), // Fondo del contenedor
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 12), // Agrega padding a los lados
                  ),
                  dropdownColor: const Color.fromARGB(255, 0, 17, 255),
                  // Color del menú desplegable
                  icon: const SizedBox.shrink(),

                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                  hint: Container(
                    alignment:
                        Alignment.centerLeft, // Alinea el texto a la izquierda
                    child: const Text(
                      'Selecciona una opció',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  items: const [
                    DropdownMenuItem(
                      value: 'Mercuri',
                      child: Text('Mercuri'),
                    ),
                    DropdownMenuItem(
                      value: 'Venus',
                      child: Text('Venus'),
                    ),
                    DropdownMenuItem(
                      value: 'Terra',
                      child: Text('Terra'),
                    ),
                    DropdownMenuItem(
                      value: 'Mart',
                      child: Text('Mart'),
                    ),
                    DropdownMenuItem(
                      value: 'Júpiter',
                      child: Text('Júpiter'),
                    ),
                    DropdownMenuItem(
                      value: 'Saturn',
                      child: Text('Saturn'),
                    ),
                    DropdownMenuItem(
                      value: 'Urà',
                      child: Text('Urà'),
                    ),
                    DropdownMenuItem(
                      value: 'Neptú',
                      child: Text('Neptú'),
                    ),
                    DropdownMenuItem(
                      value: 'Plutó',
                      child: Text('Plutó'),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  isExpanded: true,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 12),
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
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
