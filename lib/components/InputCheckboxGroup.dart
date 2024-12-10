import 'package:flutter/material.dart';

class InputCheckboxGroup extends StatefulWidget {
  final String titol;
  final List<String> options;

  const InputCheckboxGroup({
    Key? key,
    required this.titol,
    required this.options,
  }) : super(key: key);

  @override
  _InputCheckboxGroupState createState() => _InputCheckboxGroupState();
}

class _InputCheckboxGroupState extends State<InputCheckboxGroup> {
  Map<String, bool> selectedOptions = {};

  @override
  void initState() {
    super.initState();
    for (var option in widget.options) {
      selectedOptions[option] = false;
    }
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
        ...widget.options.map((option) {
          return Row(
            children: [
              Checkbox(
                value: selectedOptions[option],
                onChanged: (value) {
                  setState(() {
                    selectedOptions[option] = value!;
                    print('Checkbox $option: $value');
                  });
                },
              ),
              Text(option),
            ],
          );
        }).toList(),
      ],
    );
  }
}
