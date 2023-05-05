import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(218, 221, 221, 221),
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [RedBox(), this.child],
      ),
    );
  }
}

//Caja roja del Login
class RedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [HeaderIcon()],
      ),
      width: double.infinity,
      height: size.height * 0.4,
      color: Color(0xffed1c24),
    );
  }
}

//Icono del login
class HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Icon(Icons.person_pin,
            color: Color.fromRGBO(255, 255, 255, 1), size: 100),
      ),
    );
  }
}
