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

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Pagina3(info: listadatos),
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
      appBar: const Navegacio(
        title: "Detalls del Viatge",
        backcolor: Color.fromARGB(255, 0, 17, 255),
        colorText: Colors.tealAccent,
      ),
      backgroundColor: Colors.indigo[200],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color:  Colors.tealAccent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color.fromARGB(255, 0, 17, 255),
              width: 1.5,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputTextField(
                titol: "Passatger/a",
                backinput: const Color.fromARGB(255, 0, 17, 255),
                colobackgroundYText: Colors.tealAccent,
                tecinput: tecnombre,
              ),
              const SizedBox(height: 16),
              InputSwitch(
                titol: "Escull les característiques del viatge",
                tecinput: tecswitchh,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: InputDropdown(titol: "Origen", tecinput: tecorigen)),
                  const SizedBox(width: 16),
                  Expanded(child: InputDropdown(titol: "Destinació", tecinput: tecdestinacio)),
                ],
              ),
              const SizedBox(height: 16),
              InputRadio(titol: "Com vols navegar?", tecinput: tecradiobutton),
              const SizedBox(height: 16),
              InputCheckbox(
                titol: "Quin tipus de viatge vols fer?",
                tecNegocis: teccbnegoci,
                tecVacances: tecCBVacances,
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    enviarDatos(
                      context,
                      tecnombre.text,
                      tecswitchh.text == 'true',
                      tecorigen.text,
                      tecdestinacio.text,
                      tecradiobutton.text,
                      teccbnegoci.text,
                      tecCBVacances.text,
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
