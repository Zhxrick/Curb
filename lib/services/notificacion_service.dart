import 'package:flutter/material.dart';

class NotificationService {
  static final GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static void showSnackbar(String message) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          SizedBox(
            width: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'Usuario no encontrado',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Montserrat',
                letterSpacing: 1.2,
                height: 1.5,
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Color.fromARGB(255, 243, 36, 36),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    );

    messengerKey.currentState?.showSnackBar(snackBar);
  }
}
