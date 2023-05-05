import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sena/screens/home_screen.dart';
import 'package:sena/screens/login_screen.dart';
import 'package:sena/services/auth_service.dart';

class CheckAuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: authService.ReadToken(),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (!snapshot.hasData) return Text('Espere');
              //TODO: Transicion de pagina
              if (snapshot.data == '') {
                Future.microtask(() => {
                      Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (__, _, ___) => LoginScreen(),
                              transitionDuration: Duration(seconds: 0)))
                    });
              } else {
                Future.microtask(() => {
                      Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (__, _, ___) => HomeScreen(),
                              transitionDuration: Duration(seconds: 0)))
                    });
              }
              return Container();
            }),
      ),
    );
  }
}
