import 'package:flutter/material.dart';
import 'package:sena/widgets/background.dart';
import 'package:sena/widgets/card_table.dart';

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          Background1(),
          //ScrollView
          _FoodBody(),
          //card table
        ],
      ),
    );
  }
}

class _FoodBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [CardTable()],
      ),
    );
  }
}
