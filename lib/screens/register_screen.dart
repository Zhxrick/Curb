import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sena/services/services.dart';
import 'package:sena/UsingInterface/input_decoration.dart';
import 'package:sena/providers/login_form_provider.dart';
import 'package:sena/services/auth_service.dart';
import 'package:sena/widgets/widgets.dart';

//--------------------------------------------------------
class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
          child: SingleChildScrollView(
              child: Column(
        children: [
          const SizedBox(height: 250),
          CardContainer(
            child: Column(
              children: [
                SizedBox(height: 10),
                Text('Sign in', style: Theme.of(context).textTheme.headline4),
                SizedBox(height: 30),
                ChangeNotifierProvider(
                  create: (_) => LoginFormProvider(),
                  child: _LoginForm(),
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          TextButton(
            onPressed: () => Navigator.pushReplacementNamed(context, 'login'),
            style: ButtonStyle(
                overlayColor:
                    MaterialStateProperty.all(Colors.red.withOpacity(0.1)),
                shape: MaterialStateProperty.all(StadiumBorder())),
            child: Text('¿Ya tienes una cuenta?',
                style: TextStyle(fontSize: 18, color: Colors.black)),
          ),
          SizedBox(height: 50)
        ],
      ))),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);

    return Container(
      child: Form(
          //provider
          key: loginForm.formKey,
          //
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecorations.authInputDecoration(
                      hintText: 'example@gmail.com',
                      labelText: 'Correo electronico',
                      prefixIcon: Icons.alternate_email_rounded),
                  //correo
                  onChanged: (value) => loginForm.email = value,
                  validator: (value) {
                    String pattern =
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regExp = new RegExp(pattern);
                    return regExp.hasMatch(value ?? '')
                        ? null
                        : 'correo invalido';
                  }),
              SizedBox(
                height: 30,
              ),

              TextFormField(
                autocorrect: false,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                    hintText: '******',
                    labelText: 'Contraseña',
                    prefixIcon: Icons.lock_outline),
                onChanged: (value) => loginForm.password = value,
                //contraseña
                validator: (value) {
                  return (value != null && value.length >= 6)
                      ? null
                      : 'la contraseña debe tener 6 caracteres';
                },
              ),

              SizedBox(height: 30),
              //boton de ingresar
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  disabledColor: Colors.grey,
                  elevation: 0,
                  color: Colors.red,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    child: Text(
                      loginForm.isLoading ? 'Espere' : 'Ingresar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onPressed: loginForm.isLoading
                      ? null
                      : () async {
                          FocusScope.of(context).unfocus();
                          final authService =
                              Provider.of<AuthService>(context, listen: false);
                          if (!loginForm.isValidForm()) return;
                          loginForm.isLoading = true;

                          //TODO: validar si el login es correcto
                          final String? errorMessage = await authService
                              .createUser(loginForm.email, loginForm.password);
                          if (errorMessage == null) {
                            Navigator.pushReplacementNamed(context, 'Home');
                          } else {
                            //TODO: mostrar error en pantalla
                            print(errorMessage);
                          }
                          loginForm.isLoading = false;
                        })
            ],
          )),
    );
  }
}
