import 'package:flutter/material.dart';
import 'package:food_fundacion/pages/Home2.dart';
import 'package:food_fundacion/pages/sub_comida/Hamburguesa.dart';
import 'package:food_fundacion/pages/sub_comida/donas.dart';
import 'package:food_fundacion/pages/sub_comida/page.dart';
import 'package:food_fundacion/pages/sub_comida/pizza.dart';
import 'package:food_fundacion/pages/sub_comida/vegetales.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/MyTabs.dart';

class Comida extends StatefulWidget {
  const Comida({super.key});

  @override
  State<Comida> createState() => _ComidaState();
}

class _ComidaState extends State<Comida> {
  List<Widget> myTabs = const [
    MyTab(
      iconPath: 'lib/images/taco.png',
    ),
    MyTab(
      iconPath: 'lib/images/rosquilla.png',
    ),
    MyTab(
      iconPath: 'lib/images/dieta.png',
    ),
    MyTab(
      iconPath: 'lib/images/hamburguesa.png',
    ),
    MyTab(
      iconPath: 'lib/images/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              icon: Icon(
                Icons.exit_to_app_outlined,
                color: Colors.white,
                size: 36,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Home2()),
                );
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Icon(
                Icons.add_shopping_cart,
                color: Colors.grey[800],
                size: 36,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            //What do you want to eat
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 1),
              child: Row(
                children: [
                  Text(
                    '¿Que quieres',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    '  Comer?',
                    style: GoogleFonts.bebasNeue(
                      color: Colors.green,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            //tap bar
            TabBar(tabs: myTabs),
            //tab bar view

            const Expanded(
              child: TabBarView(
                children: [
                  //page
                  Page1(),
                  //donas
                  Donas(),
                  //vegetales
                  Vegetales(),
                  //Hamburguesa
                  Hamburguesa(),
                  //Pizza
                  Pizza(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
