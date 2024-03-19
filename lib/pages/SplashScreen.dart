import 'package:flutter/material.dart';
import 'package:food_fundacion/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        //Fondo
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.53,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.53,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      //imagen
                      image: DecorationImage(
                          image: AssetImage("lib/images/anima.png"),
                          fit: BoxFit.cover),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(70))),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.88,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/images/anima.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.88,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(70))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(children: [
                    //Primer Texto
                    Text(
                      "Caminemos Juntos",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //Sgundo Texto
                    const Text(
                      "    Bienvenidos a la App\n Fundacion Caminemos Juntos",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Padding(
                      //Circulos
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 60),
                      child: Row(
                        children: [
                          Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                border: Border.all(
                                    width: 1.5, color: primaryColor)),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                border: Border.all(
                                    width: 1.5, color: primaryColor)),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          //boton ingresar
                          Container(
                            height: 16,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                color: primaryColor),
                          ),
                          const Spacer(),
                          GestureDetector(
                            //redireccionamiento
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: Container(
                              height: 75,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: primaryColor),
                              child: const Center(
                                child: Text(
                                  "Ingresar",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
