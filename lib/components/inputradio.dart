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
        Row(
          children: [
            Expanded(
              child: RadioListTile<String>(
                value: '1a classe',
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value;
                  });
                },
                title: const Text('1a classe'),
              ),
            ),
            Expanded(
              child: RadioListTile<String>(
                value: 'Business',
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value;
                  });
                },
                title: const Text('Business'),
              ),
            ),
            Expanded(
              child: RadioListTile<String>(
                value: 'Economy',
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value;
                  });
                },
                title: const Text('Economy'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
