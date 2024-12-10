import 'package:flutter/material.dart';

class InputRadio extends StatefulWidget {
  final String titol;

  const InputRadio({Key? key, required this.titol}) : super(key: key);

  @override
  _InputRadioState createState() => _InputRadioState();
}

class _InputRadioState extends State<InputRadio> {
  String? _selectedValue;

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
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 17, 255),
            borderRadius: BorderRadius.circular(8),
          ),
          
          child: Column(  // Cambiado de Row a Column
            children: [
              RadioListTile<String>(
                value: '1a classe',
                groupValue: _selectedValue,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value;
                  });
                },
                title: const Text(
                  '1a classe',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RadioListTile<String>(
                value: 'Business',
                groupValue: _selectedValue,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value;
                  });
                },
                title: const Text(
                  'Business',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RadioListTile<String>(
                value: 'Economy',
                groupValue: _selectedValue,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value;
                  });
                },
                title: const Text(
                  'Economy',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
