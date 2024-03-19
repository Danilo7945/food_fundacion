import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'My_Textfield.dart';

class Res_Pass extends StatelessWidget {
  const Res_Pass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Animacion
          Lottie.network(
              "https://assets5.lottiefiles.com/packages/lf20_jzpjbmvd.json"),
          //texto de color azul de olvdaste tu contraseña
          const Text(
            "¿Olvidaste tu contraseña?",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Por favor ingresa tu Email para poder restablecer",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 15),

          //Texfeld validacion email
          MyTextField(
            hintText: 'Email',
            obscureText: false,
          ),
          const SizedBox(height: 15),

          //Boton para restablecer
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                "Restablecer",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
