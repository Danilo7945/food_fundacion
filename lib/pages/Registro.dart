import 'package:flutter/material.dart';
import 'package:food_fundacion/pages/Login.dart';
import 'package:google_fonts/google_fonts.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

String groupValue = 'Mujer';

class _RegistroState extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.black),
            child: Padding(
              padding: EdgeInsets.only(top: 68.0, left: 100),
              child: Text(
                'Bienvenidos \n Registrate!',
                style: GoogleFonts.bebasNeue(
                  color: Colors.green,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(50),
                bottom: Radius.circular(50),
              ),
              child: Container(
                color: Colors.white,
                height: 550,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Crea Una Cuenta',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        'Es Rapido y Facil',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.check,
                            color: Colors.grey,
                          ),
                          label: Text(
                            'Nombre',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          label: Text(
                            'Apellido',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          label: Text(
                            'Número Telefonico o Correo Electronico',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          label: Text(
                            'Contraseña Nueva',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Mujer",
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = value!;
                              });
                            },
                            activeColor:
                                Colors.black, // Cambia el color del RadioButton
                          ),
                          const Text(
                            'Mujer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 17,
                          ),
                          Radio(
                            value: "Hombre",
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = value!;
                              });
                            },
                            activeColor:
                                Colors.black, // Cambia el color del RadioButton
                          ),
                          const Text(
                            'Hombre',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 17,
                          ),
                          Radio(
                            value: "Otro",
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = value!;
                              });
                            },
                            activeColor:
                                Colors.black, // Cambia el color del RadioButton
                          ),
                          const Text(
                            'Otro',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 53, 227, 97),
                              Color.fromARGB(255, 0, 0, 0),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Registrar',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: const Text(
                          "¿Ya Tienes cuenta?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueAccent,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
