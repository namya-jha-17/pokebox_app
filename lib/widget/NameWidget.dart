import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokebox_app/Model/Pokemon.dart';

class NameWidget extends StatelessWidget {
  final Pokemon pokemon;

  const NameWidget( { required this.pokemon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container( height :MediaQuery.of(context).size.height,
      width:MediaQuery.of(context).size.width,padding: EdgeInsets.all(8),
      color: pokemon.color,
      child: Row(children: [
      Column(children: [
        Text(pokemon.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        Row(children: [for ( var type in pokemon.Type)
                           Container( margin: EdgeInsets.all(4), padding: EdgeInsets.only(bottom: 5,left: 9), width:60,height:25,decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),color: pokemon.color.withOpacity(0.2),),
                             child:Text(type,style: TextStyle(fontSize: 15),),),
//Container(width: 150,height: 5,),


        ],
        ),
         ]
      ),


       ],
    ),
    );
  }

}