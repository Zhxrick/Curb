import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          //TODO: AÑADIR MÁS CUADROS CON DISTINTAS COMIDAS
          _SingleCard(
              imagePath: 'assets/BurgerFood.png',
              color: Color(0xAC000000),
              text: 'Hamburguesa'),
          _SingleCard(
              imagePath: 'assets/BurgerFood.png',
              color: Color(0xAC000000),
              text: 'Hamburguesa')
        ]),
        TableRow(children: [
          //TODO: AÑADIR MÁS CUADROS CON DISTINTAS COMIDAS
          _SingleCard(
              imagePath: 'assets/BurgerFood.png',
              color: Color(0xAC000000),
              text: 'Hamburguesa'),
          _SingleCard(
              imagePath: 'assets/BurgerFood.png',
              color: Color(0xAC000000),
              text: 'Hamburguesa')
        ]),
        TableRow(children: [
          //TODO: AÑADIR MÁS CUADROS CON DISTINTAS COMIDAS
          _SingleCard(
              imagePath: 'assets/BurgerFood.png',
              color: Color(0xAC000000),
              text: 'Hamburguesa'),
          _SingleCard(
              imagePath: 'assets/BurgerFood.png',
              color: Color(0xAC000000),
              text: 'Hamburguesa')
        ]),
        TableRow(children: [
          //TODO: AÑADIR MÁS CUADROS CON DISTINTAS COMIDAS
          _SingleCard(
              imagePath: 'assets/BurgerFood.png',
              color: Color(0xAC000000),
              text: 'Hamburguesa'),
          _SingleCard(
              imagePath: 'assets/BurgerFood.png',
              color: Color(0xAC000000),
              text: 'Hamburguesa')
        ]),
        TableRow(children: [
          //TODO: AÑADIR MÁS CUADROS CON DISTINTAS COMIDAS
          _SingleCard(
              imagePath: 'assets/BurgerFood.png',
              color: Color(0xAC000000),
              text: 'Hamburguesa'),
          _SingleCard(
              imagePath: 'assets/BurgerFood.png',
              color: Color(0xAC000000),
              text: 'Hamburguesa')
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final String imagePath;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key,
      required this.imagePath,
      required this.color,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 160,
      decoration: BoxDecoration(
        color: Color.fromARGB(153, 255, 3, 3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            radius: 30, // Cambiar este valor para ajustar el tamaño del avatar
            child: ClipOval(
              child: Image(
                image: AssetImage(imagePath),
                height: 60,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(this.text,
              style: TextStyle(
                  color: this.color, fontSize: 18, fontFamily: 'Raleway'))
        ],
      ),
    );
  }
}
