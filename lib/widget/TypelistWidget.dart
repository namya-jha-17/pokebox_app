import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokebox_app/Model/Pokemon.dart';

class TypelistWidget extends StatefulWidget {
  late Pokemon pokemon;

  TypelistWidget(this.pokemon);

  @override
  State<TypelistWidget> createState() => _TypelistWidgetState();
}

class _TypelistWidgetState extends State<TypelistWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(widget.pokemon.name,style: TextStyle(fontWeight: FontWeight.bold),),
      Container(height: 100,width: 50,margin: EdgeInsets.all(5),
      child: Column(children: [
      for (final type in widget.pokemon.Type)


         Container(margin:EdgeInsets.only(bottom: 10),alignment:Alignment.center,
           padding:EdgeInsets.all(4),height:20,width:50,decoration:BoxDecoration(color: widget.pokemon.color.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(20)),
         ),

         child: Text(type,style: TextStyle(fontSize: 10),),
        ),



    ],), // child: ListView.builder(
    //     itemCount: widget.pokemon.Type.length,
    //     shrinkWrap: false,
    //     itemBuilder: (BuildContext ctx, int index) {
    //
    //       return Card(shape: StadiumBorder(),
    //         child:FittedBox(child:Text(widget.pokemon.Type[index]),),
    //       );




  )

  ,





  ]

  );
}}
