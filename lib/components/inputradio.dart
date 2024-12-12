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
    _selectedValue = widget.tecinput?.text;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(Colors.white),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          visualDensity: VisualDensity.compact,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.titol,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                RadioListTile<String>(
                  value: '1a classe',
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value;
                      widget.tecinput?.text = value!;
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
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value;
                      widget.tecinput?.text = value!;
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
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value;
                      widget.tecinput?.text = value!;
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
      ),
    );
  }
}
