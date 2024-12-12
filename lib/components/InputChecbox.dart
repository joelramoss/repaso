import 'package:flutter/material.dart';

class InputCheckbox extends StatefulWidget {
  final String titol;
  final TextEditingController tecNegocis;
  final TextEditingController tecVacances;

  const InputCheckbox({
    Key? key,
    required this.titol,
    required this.tecNegocis,
    required this.tecVacances,
  }) : super(key: key);

  @override
  _InputCheckboxState createState() => _InputCheckboxState();
}

class _InputCheckboxState extends State<InputCheckbox> {
  bool _isNegocisSelected = false;
  bool _isVacancesSelected = false;

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
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              // Checkbox Negocis
              Row(
                children: [
                  Checkbox(
                    value: _isNegocisSelected,
                    onChanged: (bool? value) {
                      setState(() {
                        _isNegocisSelected = value!;

                        // Actualiza el controlador
                        widget.tecNegocis.text = _isNegocisSelected.toString();
                      });
                    },
                    side: BorderSide(color: Colors.white, width: 2),
                    activeColor: Colors.tealAccent, // Color cuando está activado
                    checkColor: Colors.white, // Color de la marca de verificación
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Negocis',
                    style: TextStyle(
                      color: _isNegocisSelected ? Colors.tealAccent : Colors.white, // Cambia el color del texto
                    ),
                  ),
                ],
              ),
              // Checkbox Vacances
              Row(
                children: [
                  Checkbox(
                    value: _isVacancesSelected,
                    onChanged: (bool? value) {
                      setState(() {
                        _isVacancesSelected = value!;

                        // Actualiza el controlador
                        widget.tecVacances.text = _isVacancesSelected.toString();
                      });
                    },
                    side: BorderSide(color: Colors.white, width: 2),
                    activeColor: Colors.tealAccent, // Color cuando está activado
                    checkColor: Colors.white, // Color de la marca de verificación
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Vacances',
                    style: TextStyle(
                      color: _isVacancesSelected ? Colors.tealAccent : Colors.white, // Cambia el color del texto
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
