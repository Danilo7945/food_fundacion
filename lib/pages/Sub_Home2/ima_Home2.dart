import 'package:flutter/material.dart';

class Ima_Home2 extends StatelessWidget {
  final String ImaProd;
  final String NameProd;
  final String PrecioProd;

  Ima_Home2({
    required this.ImaProd,
    required this.NameProd,
    required this.PrecioProd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //IMAGEN
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(ImaProd),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //NAME
                  Text(
                    NameProd,
                    style: TextStyle(fontSize: 20),
                  ),

                  const SizedBox(
                    height: 4,
                  ),
                  //Descripcion
                  Text(
                    "Blessed",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            //PRECIO
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$" + PrecioProd),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Icon(Icons.add),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
