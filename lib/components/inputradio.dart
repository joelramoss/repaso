import 'package:flutter/material.dart';

class InputRadio extends StatefulWidget {
  final String titol;
  final TextEditingController? tecinput;

  const InputRadio({
    Key? key,
    required this.titol,
    this.tecinput,
  }) : super(key: key);

  @override
  _InputRadioState createState() => _InputRadioState();
}

class _InputRadioState extends State<InputRadio> {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    // Inicializar el valor seleccionado con el texto actual del controller
    _selectedValue = widget.tecinput?.text;
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
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 17, 255),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              RadioListTile<String>(
                value: '1a classe',
                groupValue: _selectedValue,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value;
                    widget.tecinput?.text = value!; // Sincronizar con el controller
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
                    widget.tecinput?.text = value!; // Sincronizar con el controller
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
                    widget.tecinput?.text = value!; // Sincronizar con el controller
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
