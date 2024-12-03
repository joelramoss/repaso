import 'package:flutter/material.dart';
import 'package:repaso/components/navegacio.dart';

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: Navegacio(title: "Star Trips - Configura el viatge", backcolor: Color.fromARGB(255, 1, 10, 90), colorText: Color.fromARGB(255, 1, 253, 241)),
      body: Center(
        child: Text("Pagina 2"),

        //Titol pasado desde widget (Passatger/a)
        //TextInput con el texto de dentro pasado por widget
        

        //Titol pasado desde widget (Escull les caractersitiques del viatge)
        //Checkbox + Anada i Tornada

        //ROW CON - (Origen) + debajo (una lista con diferentes opciones) - (Destinacio) + debajo (una lista con diferentes opciones)

        //Titol pasado desde widget (Com vols navegar?)
        //3 checkbox 1. (1a classe) 2.(Bussines) 3.(Economy)

        //Titol pasado desde widget (Quin tipus de viatge vols fer?)
        // Checkbox (1. Negocis 2. Vacances)

        //Boton de enviar (Enviar dades)
      ),
    );
  }
}