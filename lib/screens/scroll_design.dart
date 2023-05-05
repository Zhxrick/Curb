import 'package:flutter/material.dart';
import 'package:sena/screens/login_screen.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        Page1(),
        LoginScreen(),
      ],
    ));
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background
        Background(),
        //Main Content - Column
        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '.',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 236, 11, 11)),
          ),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down,
              size: 100, color: Color.fromARGB(255, 255, 255, 255))
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffed1c24),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(
          image: AssetImage('assets/PrototipoBurger.png'),
        ));
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [Color(0xffed1c24), Colors.yellow]),
    );

    return Stack(
      children: [
        // caja blanca de Login
        Container(decoration: boxDecoration),
        Positioned(top: 300, left: 45, child: _WhiteBox()),
      ],
    );
  }
}

class _WhiteBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 340,
        height: 487,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(40),
        ));
  }
}
