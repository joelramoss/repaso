import 'package:flutter/material.dart';

class InputSwitch extends StatefulWidget {
  final String titol;
  final TextEditingController tecinput;

  const InputSwitch({Key? key, required this.titol, required this.tecinput}) : super(key: key);

  @override
  _InputSwitchState createState() => _InputSwitchState();
}

class _InputSwitchState extends State<InputSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Título fuera del Container
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.titol,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        // Container que contiene el Switch y el texto al lado
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(255, 0, 17, 255),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // El Switch
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              // El texto al lado del Switch
              const Text(
                "Anada i Tornada",
                style: TextStyle(
                  color: Colors.white, // Color del texto
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
