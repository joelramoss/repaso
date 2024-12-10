import 'package:flutter/material.dart';
import 'package:repaso/components/InputChecbox.dart';
import 'package:repaso/components/InputDropdown.dart';
import 'package:repaso/components/InputTextField.dart';
import 'package:repaso/components/InputSwitch.dart';
import 'package:repaso/components/Navegacio.dart';
import 'package:repaso/components/Pagina3.dart';
import 'package:repaso/components/inputradio.dart'; // Importa tu AppBar personalizado

class Pagina2 extends StatelessWidget {
  void enviarDatos(
    BuildContext context,
    String nombre,
    bool switchh,
    String origen,
    String destinacio,
    String radiobutton,
    String cbnegoci,
    String cbvacances,
  ) {
    List listadatos = [
      {"Input nom": nombre},
      {"Switch": switchh},
      {"Origen": origen},
      {"Destinació": destinacio},
      {"RadioButtons": radiobutton},
      {"CBNegocis": cbnegoci},
      {"CBVacances": cbvacances},
    ];
    // Navegar a Pagina2 pasando los datos
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Pagina3(
          info: listadatos,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController tecnombre = TextEditingController();
    TextEditingController tecswitchh = TextEditingController();
    TextEditingController tecorigen = TextEditingController();
    TextEditingController tecdestinacio = TextEditingController();
    TextEditingController tecradiobutton = TextEditingController();
    TextEditingController teccbnegoci = TextEditingController();
    TextEditingController tecCBVacances = TextEditingController();

    return Scaffold(
      // Añadir AppBar aquí
      appBar: const Navegacio(
        title: "Detalls del Viatge", // Texto del título
        backcolor: Color.fromARGB(255, 0, 17, 255), // Color de fondo
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
              InputTextField(
                titol: "Passatger/a",
                backinput: const Color.fromARGB(255, 0, 17, 255),
                colobackgroundYText: Colors.white,
                tecinput: tecnombre,
              ),
              const SizedBox(height: 16),

              // Switch: Anada i tornada
              InputSwitch(titol: "Escull les característiques del viatge", tecinput: tecswitchh,),
              const SizedBox(height: 16),

              // Dropdowns: Origen y Destinació
               Row(
                children: [
                  Expanded(child: InputDropdown(titol: "Origen",tecinput : tecorigen ),),
                  SizedBox(width: 16),
                  Expanded(child: InputDropdown(titol: "Destinació", tecinput : tecdestinacio),),
                ],
              ),
              const SizedBox(height: 16),

              // Radio buttons: Com vols navegar?
               InputRadio(titol: "Com vols navegar?",tecinput: tecradiobutton,),
              const SizedBox(height: 16),

              // Checkbox: Quin tipus de viatge vols fer?
              InputCheckbox(
                  titol: "Quin tipus de viatge vols fer?",
                  isNegocis: teccbnegoci.text == 'Negocis',
                  isVacances: teccbvacances.text == 'Vacances'
                  ),
              const SizedBox(height: 16),

              // Botón de enviar
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Pagina3(
                          info: [],
                        ),
                      ),
                    );
                  },
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
