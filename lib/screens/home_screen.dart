import 'package:flutter/material.dart';
import 'package:sena/screens/home/order_screen.dart';
import 'package:sena/screens/home/transactions_screen.dart';
import 'package:sena/widgets/widgets.dart';
import 'home/food_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    OrderScreen(),
    FoodScreen(),
    TransactionsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset('assets/LogoCurb.png', height: 50),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      drawer: DrawerHome(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Pedido',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'Comida',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.paid_rounded),
            label: 'Historial',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 255, 25, 25),
        onTap: _onItemTapped,
      ),
    );
  }
}
