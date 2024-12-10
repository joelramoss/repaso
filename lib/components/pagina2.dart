import 'package:flutter/material.dart';
import 'package:repaso/components/InputChecbox.dart';
import 'package:repaso/components/InputDropdown.dart';
import 'package:repaso/components/InputTextField.dart';
import 'package:repaso/components/InputSwitch.dart';
import 'package:repaso/components/InputRadio.dart';
import 'package:repaso/components/Navegacio.dart'; // Importa tu AppBar personalizado

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Añadir AppBar aquí
      appBar: const Navegacio(
        title: "Detalls del Viatge", // Texto del título
        backcolor:  Color.fromARGB(255, 0, 17, 255), // Color de fondo
        colorText: Colors.white, // Color del texto y el icono
      ),
      backgroundColor: Colors.indigo[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 207, 255, 243),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color.fromARGB(255, 0, 17, 255),
              width: 1.5,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Campo de texto: Passatger/a
              const InputTextField(
                titol: "Passatger/a",
                backinput: Color.fromARGB(255, 0, 17, 255),
                colobackgroundYText: Colors.white,
              ),
              const SizedBox(height: 16),

              // Switch: Anada i tornada
              const InputSwitch(titol: "Escull les característiques del viatge"),
              
              const SizedBox(height: 16),

              // Dropdowns: Origen y Destinació
              const Row(
                children: [
                  Expanded(child: InputDropdown(titol: "Origen")),
                  SizedBox(width: 16),
                  Expanded(child: InputDropdown(titol: "Destinació")),
                ],
              ),
              const SizedBox(height: 16),

              // Radio buttons: Com vols navegar?
              const InputRadio(titol: "Com vols navegar?"),
              const SizedBox(height: 16),

              // Checkbox: Quin tipus de viatge vols fer?
              const InputCheckbox(titol: "Quin tipus de viatge vols fer?", options: ['Negocis', 'Vacances']),
              const SizedBox(height: 16),

              // Botón de enviar
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Enviar dades"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
