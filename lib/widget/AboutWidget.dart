import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokebox_app/Model/Pokemon.dart';

class AboutWidget extends StatelessWidget{
  Pokemon pokemon;

  AboutWidget(this.pokemon);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(children: [

      Container(width: 150,
        child: Column(children: [
        Text('Species            ',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        Text('height             ',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        Text('weight             ',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        Text('Abilities          ',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
    ],
        ),
      ),
      Container(
        child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
          Text(pokemon.species,style:TextStyle(color: Colors.black)),
          Text(pokemon.height             ,style:TextStyle(color: Colors.black)),
          Text(pokemon.weight             ,style:TextStyle(color: Colors.black)),
          for (final ab in pokemon.ability)
          Text(ab      ,style:TextStyle(color: Colors.black)),
        ],
        ),
      ),
    ],
    );                                    //   ${pokemon.species}
  }

}