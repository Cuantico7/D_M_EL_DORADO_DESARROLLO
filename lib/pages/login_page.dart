
import 'package:flutter/material.dart';
import 'package:sprint2_mobil_udea/pages/home_page.dart';
import 'package:sprint2_mobil_udea/pages/registrar_page.dart';
import 'ciudad.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final email=TextEditingController();
  final password=TextEditingController();

  void validarUsuario(){

    if(email.text.isNotEmpty && password.text.isNotEmpty){
      if(email.text=="fernando@gmail.com") {
        if (password.text == "00000000") {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const HomePage()));
        } else {
          mostrarMensaje("Contraseña Incorrecta.");
        }
      }else{  mostrarMensaje("Usuario no registrado."); }
    }else{
      mostrarMensaje("Datos Obligatorios.");
    }
  }

  void mostrarMensaje(String mensaje){
    final pantalla=ScaffoldMessenger.of(context);
    pantalla.showSnackBar(
        SnackBar(
          content: Text(mensaje, style: const TextStyle(fontSize: 20),),
          backgroundColor: const Color(0xFF0D11EB),
          duration: const Duration(seconds: 10),
          action: SnackBarAction(
              label: 'Registrese',
              onPressed: (){
                pantalla.hideCurrentSnackBar;
                Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrarPage()));
              }

          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 33,horizontal: 25),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: const Image( image: AssetImage("assets/images/logo.png"), width: 120, height: 120),
                  padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      border: Border.all(color: Colors.blue, width: 4),
                      color: Colors.white
                  ),
                ),
                TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                      labelText: "Correo Electronico",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.email_outlined, color: Colors.blue, size: 24)
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  //keyboardType: TextInputType.emailAddress,
                  //maxLength: 8,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.vpn_key_sharp, color: Colors.blue, size: 24),

                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.blue)
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrarPage()));
                    },

                    child: const Text("Registrarse")
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(200, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8050)
                        ),
                        shadowColor: Colors.purple,
                        textStyle: const TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20
                        )
                    ),
                    onPressed:(){
                      validarUsuario();
                    },
                    child: const Text("Ingresar"))

              ],
            ),
          ),
        ),
      ),
    );
  }
}


