import 'package:flutter/material.dart';
import 'package:repaso/components/inputs.dart';
import 'package:repaso/components/navegacio.dart';

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navegacio(
        title: "Star Trips - Configura el viatge",
        backcolor: Color.fromARGB(255, 1, 10, 90),
        colorText: Color.fromARGB(255, 1, 253, 241),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Titol pasado desde widget (Passatger/a)
            // TextInput con el texto de dentro pasado por widget
            const Inputs(
              titol: "Passatger/a",
              indiceInput: 2,
              colobackgroundYText: Color.fromARGB(255, 0, 255, 191),
              backinput: Color.fromARGB(255, 0, 17, 255),
            ),

            // Titol pasado desde widget (Escull les caractersitiques del viatge)
            // Checkbox + Anada i Tornada
            const Inputs(
              titol: "Escull les caractersitiques del viatge",
              indiceInput: 1,
              colobackgroundYText: Color.fromARGB(255, 0, 255, 191),
              backinput: Color.fromARGB(255, 0, 17, 255),
            ),

            // ROW CON:
            // - (Origen) + debajo (una lista con diferentes opciones)
            // - (Destinacio) + debajo (una lista con diferentes opciones)
            const Row(
              children: [
                Inputs(
                  titol: "Origen",
                  indiceInput: 3,
                  colobackgroundYText: Color.fromARGB(255, 0, 255, 191),
                  backinput: Color.fromARGB(
                      255, 0, 17, 255), // Dropdown para selección de opciones
                ),
                Inputs(
                  titol: "Destinacio",
                  indiceInput: 3,
                  colobackgroundYText: Color.fromARGB(255, 0, 255, 191),
                  backinput: Color.fromARGB(
                      255, 0, 17, 255), // Dropdown para selección de opciones
                ),
              ],
            ),

            // Titol pasado desde widget (Com vols navegar?)
            // 3 checkbox: 1. (1a classe) 2. (Business) 3. (Economy)
            const Inputs(
              titol: "Com vols navegar?",
              indiceInput: 1,
              colobackgroundYText: Color.fromARGB(255, 0, 255, 191),
              backinput: Color.fromARGB(255, 0, 17,
                  255), // Puedes extender Inputs para múltiples opciones
            ),

            // Titol pasado desde widget (Quin tipus de viatge vols fer?)
            // Checkbox: 1. (Negocis) 2. (Vacances)
            const Inputs(
              titol: "Quin tipus de viatge vols fer?",
              indiceInput: 1,
              colobackgroundYText: Color.fromARGB(255, 0, 255, 191),
              backinput: Color.fromARGB(255, 0, 17,
                  255), // Similar al anterior, puedes adaptar Inputs
            ),

            // Botón de enviar (Enviar dades)
            Center(
              child: ElevatedButton(
                onPressed: () {
                  print("Enviar dades");
                },
                child: const Text("Enviar dades"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
