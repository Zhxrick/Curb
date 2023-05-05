import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sena/screens/home/food_screen.dart';
import 'package:sena/screens/screens.dart';
import 'package:sena/services/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: COLOR DE LA HORA
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CurbMovil',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AuthService()),
        ],
        child: ScrollScreen(),
      ),

      // TODO: estas son las rutas de la carpeta screens
      routes: {
        'scroll': (_) => MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => AuthService()),
              ],
              child: ScrollScreen(),
            ),
        'login': (_) => MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => AuthService()),
              ],
              child: LoginScreen(),
            ),
        'Home': (_) => MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => AuthService()),
              ],
              child: HomeScreen(),
            ),
        'Register': (_) => MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => AuthService()),
              ],
              child: RegisterScreen(),
            ),
        'Checking': (_) => MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => AuthService()),
              ],
              child: CheckAuthScreen(),
            ),
        'food': (_) => MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => AuthService()),
              ],
              child: FoodScreen(),
            ),
        'order': (_) => MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => AuthService()),
              ],
              child: OrderScreen(),
            ),
        'Transactions': (_) => MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => AuthService()),
              ],
              child: TransactionsScreen(),
            )
      },
      scaffoldMessengerKey: NotificationService.messengerKey,
    );
  }
}
