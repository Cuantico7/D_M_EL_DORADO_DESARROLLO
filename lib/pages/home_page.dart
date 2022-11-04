
/*import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}*/

import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Container(
              padding: const EdgeInsets.symmetric(vertical: 33,horizontal: 25),
            child: Center(
              child: Column(
                children: [Container(
                  child: Image(image: AssetImage("assets/images/ciudad.png"), width: 200, height: 200),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  margin: const EdgeInsets.all(20),
                )],
              ),
            ),
          ),
            Text("Piratas, corsarios y bucaneros; flotas, poderosos navíos y marinas de guerra de todas las latitudes se acercaron a sus playas sin poder creer lo que sus ojos les mostraban, era el lugar que solo en sueños podían divisar y que para envidiosamente evitar que otros disfrutarán, hubo que fortificar.Cartagena de Indias, una perla en el mar Caribe cuya belleza la ha convertido desde hace décadas en punto obligado del turismo en Colombia, sin duda, es el destino más apetecido por los visitantes que no logran escapar a su magia y que motivados por su esplendor regresan para descubrir nuevas emociones y experimentar una sensación única, esa que solo se puede entender al divisar el horizonte azulado que se posa junto a sus murallas.")


          ],
        ),
      ),
    );
  }
}


