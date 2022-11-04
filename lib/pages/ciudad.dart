import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  //const DescriptionPlace({Key? key}) : super(key: key);
  late String namePlace;
  late int stars;
  late String descriptionPlace;


  DescriptionPlace(
      this.namePlace, this.stars, this.descriptionPlace);

  String descriptionDummy="Piratas, corsarios y bucaneros; flotas, poderosos navíos y marinas de guerra de todas las latitudes se acercaron a sus playas sin poder creer lo que sus ojos les mostraban, era el lugar que solo en sueños podían divisar y que para envidiosamente evitar que otros disfrutarán, hubo que fortificar.Cartagena de Indias, una perla en el mar Caribe cuya belleza la ha convertido desde hace décadas en punto obligado del turismo en Colombia, sin duda, es el destino más apetecido por los visitantes que no logran escapar a su magia y que motivados por su esplendor regresan para descubrir nuevas emociones y experimentar una sensación única, esa que solo se puede entender al divisar el horizonte azulado que se posa junto a sus murallas.";

  @override
  Widget build(BuildContext context) {

    final star1 = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xfff5e700),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xfff5e700),
      ),
    );

    final title_start = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
              top: 320.0,
              left: 20.0,
              right: 20.0
          ),
          child:  Text(
            namePlace,
            style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            star,
            star1

          ],//children
        )

      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0

      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)
        ),

      ),
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          title_start,
          description,
          ButtonPurple("buscar"),
        ],

      ),

    );
  }
}
