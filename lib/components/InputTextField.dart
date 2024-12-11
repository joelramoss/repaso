import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String titol;
  final Color backinput;
  final Color colobackgroundYText;
  final TextEditingController tecinput;

  const InputTextField({
    Key? key,
    required this.titol,
    required this.backinput,
    required this.colobackgroundYText,
    required this.tecinput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titol,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: tecinput,
          decoration: InputDecoration(
            hintText: 'Escriu el teu nom...',
            hintStyle: const TextStyle(
              color: Colors.white, // Color blanco
              fontWeight: FontWeight.bold, // Negrita
              fontStyle: FontStyle.italic, // Cursiva
              fontSize: 18,
              letterSpacing: 1.5, // Tamaño del texto
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
