import 'package:flutter/material.dart';
import 'package:sprint2_mobil_udea/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  /*funcion para inicilaizar el metodo Future de la pantalla del Splash*/
  void initState(){
    pasarPage();
    super.initState();
  }

/*Metodo de 3 segundos para cambiar de la pnatalla del splash
a la pantallla principal*/
  Future<void> pasarPage() async{
    Future.delayed(const Duration(seconds: 3), () async{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage ()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              border: Border.all(color: Colors.black, width: 10),
              color: Colors.white
          ),
          child: const Image(
              image: AssetImage("assets/images/logo.png"),
              width: 200,
              height: 200),
        ),
      ),
    );
  }
}

/*class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
****1:37 mntos
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

//funcion para inicilaizar el metodo Future de la pantalla del Splash
  void initState(){
    pasarPage();
    super.initState();
  }

//Metodo de 3 segundos para cambiar de la pnatalla del splash a la pantallla principal
  Future<void> pasarPage() async{
    Future.delayed(const Duration(seconds: 3), () async{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: const Image( image: AssetImage("assets/chico.png"), width: 200, height: 200),
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              border: Border.all(color: Colors.black38, width: 4),
              color: Colors.green
          ),
        ),
      ),

    );
  }
}*/
