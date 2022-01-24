import 'package:flutter/material.dart';
import 'package:flutter_flag/model/model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details extends StatelessWidget {
  Bandeiras bandeiras;

  Details({required this.bandeiras});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detalhes',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 250,
              width: double.infinity,
              child: SvgPicture.network(bandeiras.flag.toString()),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              bandeiras.name.toString(),
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
