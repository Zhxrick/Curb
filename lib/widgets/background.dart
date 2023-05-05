import 'package:flutter/material.dart';

//TODO: Background de el FoodScreen
class Background1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Background2.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
