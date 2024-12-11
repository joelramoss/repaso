import 'package:flutter/material.dart';

class InputSwitch extends StatefulWidget {
  final String titol;
  final TextEditingController tecinput;

  const InputSwitch({Key? key, required this.titol, required this.tecinput})
      : super(key: key);

  @override
  _InputSwitchState createState() => _InputSwitchState();
}

class _InputSwitchState extends State<InputSwitch> {
  bool isSwitched = false;

  @override
  void initState() {
    super.initState();
    // Inicializar el valor del switch según el controlador
    isSwitched = widget.tecinput.text == 'true';
  }

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
                    // Actualizar el valor del controlador según el estado del Switch
                    widget.tecinput.text = value.toString();
                  });
                },
                activeColor: Colors.tealAccent, // Color del Switch cuando está activado
                inactiveThumbColor: Colors.white, // Color del Switch cuando está desactivado
                inactiveTrackColor: Colors.transparent, // Fondo transparente cuando está desactivado
                trackColor: MaterialStateProperty.all(isSwitched
                    ? Colors.tealAccent.withOpacity(0.7) // Fondo tealAccent con menos opacidad
                    : Colors.transparent),
              ),
              // El texto al lado del Switch
              Text(
                "Anada i Tornada",
                style: TextStyle(
                  color: isSwitched
                      ? Colors.tealAccent
                      : Colors.white, // Cambia el color del texto
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
