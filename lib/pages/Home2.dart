import 'package:flutter/material.dart';
import 'package:food_fundacion/pages/Comida.dart';
import 'package:food_fundacion/pages/Sub_Home2/Categorias.dart';
import 'package:food_fundacion/pages/marketing.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Sub_Home2/ima_Home2.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  final List categorias = [
    [
      'Categoria',
      true,
    ],
    [
      'Comida',
      false,
    ],
    [
      'Bebida',
      false,
    ],
    [
      'Compras',
      false,
    ],
  ];

  void CategoriaSelector(int index) {
    setState(() {
      for (int i = 0; i < categorias.length; i++) {
        categorias[i][1] = false;
      }
      categorias[index][1] = true;

      // Navegar a la página correspondiente según la categoría seleccionada
      if (categorias[index][0] == 'Comida') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Comida()),
        );
      } else if (categorias[index][0] == 'Compras') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Marketing()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_add),
              label: '',
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Encuentra lo mejor para ti",
                style: GoogleFonts.bebasNeue(
                  fontSize: 60,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Buscar",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade600),
                    )),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categorias.length,
                    itemBuilder: (context, index) {
                      return Categorias(
                        categorias: categorias[index][0],
                        isSelected: categorias[index][1],
                        onTap: () {
                          CategoriaSelector(index);
                        },
                      );
                    })),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Ima_Home2(
                    ImaProd: "lib/images/pizza.png",
                    NameProd: "Pizza",
                    PrecioProd: "4.000",
                  ),
                  Ima_Home2(
                    ImaProd: "lib/images/taco.png",
                    NameProd: "Taco",
                    PrecioProd: "2.000",
                  ),
                  Ima_Home2(
                    ImaProd: "lib/images/yogur.png",
                    NameProd: "Yogur",
                    PrecioProd: "6.000",
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
