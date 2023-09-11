import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokebox_app/Model/Pokemon.dart';
import 'package:pokebox_app/widget/detailsWidget.dart';

import '../widget/NameWidget.dart';

class DetailsScreen extends StatefulWidget {
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();

  DetailsScreen(this.pokemon);

  Pokemon pokemon;
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: widget.pokemon.color,elevation: 0,
        actions: [Icon(Icons.favorite_border)],
      ),
    //  backgroundColor: widget.pokemon.color,
      body: Stack(children: [
        Positioned(child: Text(widget.pokemon.id,style: TextStyle(fontSize: 20),),top: 40,left: 300) ,
       Positioned(child: NameWidget(pokemon: widget.pokemon),) ,

        Positioned(
          top: 300,
         left:5,
          child: DetailWidget(widget.pokemon),
        ),
        Positioned(
          top: 90,
          left: 70,
          child: Container(
              height: 270,
              width: 250,

              child:Image.asset(
            widget.pokemon.image,fit: BoxFit.fill,)

          ),
        ),
      ]),

    );
  }
}
