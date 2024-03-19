import 'package:flutter/material.dart';
import 'package:food_fundacion/pages/Home2.dart';
import 'package:food_fundacion/pages/sub_Compras/Compra.dart';
import 'package:food_fundacion/pages/sub_Compras/Cuidado_De_Ropa.dart';
import 'package:food_fundacion/pages/sub_Compras/descuentos.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/MyTabs.dart';

class Marketing extends StatefulWidget {
  const Marketing({super.key});

  @override
  State<Marketing> createState() => _MarketingState();
}

class _MarketingState extends State<Marketing> {
  List<Widget> myTabs = const [
    MyTab(
      iconPath: 'lib/images/yogur.png',
    ),
    MyTab(
      iconPath: 'lib/images/lavaderia.png',
    ),
    MyTab(
      iconPath: 'lib/images/Descuento.png',
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
            //What do you want to eat
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 1),
              child: Row(
                children: [
                  Text(
                    '¿Que quieres',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 35,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    '  Comprar?',
                    style: GoogleFonts.bebasNeue(
                      color: Colors.green,
                      fontSize: 35,
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
                  //Compras
                  Compra(),
                  //lavanderia
                  Lavanderia(),
                  //Descuentos
                  Descuentos(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
