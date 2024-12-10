import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String titol;
  final Color backinput;
  final Color colobackgroundYText;

  const InputTextField({
    Key? key,
    required this.titol,
    required this.backinput,
    required this.colobackgroundYText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titol),
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'Escriu el teu nom',
            hintStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            ),
            fillColor: backinput,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: backinput),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: backinput),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          style: TextStyle(color: colobackgroundYText),
        ),
      ],
    );
  }
}
