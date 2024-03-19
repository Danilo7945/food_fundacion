import 'package:flutter/material.dart';
import 'package:food_fundacion/pages/Home2.dart';
import 'package:food_fundacion/pages/Registro.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Rest_Pass.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.black54),
          child: Padding(
            padding: EdgeInsets.only(top: 68.0, left: 22),
            child: Text(
              'Bienvenidos \n Sign In!',
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
                    const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.check,
                          color: Colors.grey,
                        ),
                        label: Text(
                          'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        label: Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Res_Pass()));
                        },
                        child: const Text(
                          '¿Olvidaste La Contraseña?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
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
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home2()));
                          },
                          child: const Text(
                            'Ingresar',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "lib/images/gmail.png",
                          height: 70,
                        ),
                        const SizedBox(width: 60),
                        Image.asset(
                          "lib/images/facebook.png",
                          height: 70,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            '¿No Tienes Cuenta?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Registro()),
                              );
                            },
                            child: const Text(
                              "Registrarse",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
