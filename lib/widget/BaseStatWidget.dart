import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokebox_app/Model/Pokemon.dart';

class BaseStatWidget extends StatefulWidget{
  Pokemon pokemon;

  BaseStatWidget(this.pokemon);

  @override
  State<BaseStatWidget> createState() => _BaseStatWidgetState();
}

class _BaseStatWidgetState extends State<BaseStatWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Row(children: [

      Container(width: 150,padding: EdgeInsets.only(left: 10),
        child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
          Text('HP           ',style:TextStyle(color: Colors.black),),
          Text('Attack           ',style:TextStyle(color: Colors.black,)),
          Text('Defence            ',style:TextStyle(color: Colors.black,),),
          Text('Speed          ',style:TextStyle(color: Colors.black,)),
        ],
        ),
      ),
      Container(
        child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
          Text('${widget.pokemon.hp}',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          Text('${widget.pokemon.attack}'          ,style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          Text('${widget.pokemon.defence}'         ,style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          Text('${widget.pokemon.speed}'         ,style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        ],
        ),
      ),
      Container( width: 160,margin: EdgeInsets.only(left: 30),
        child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
          SizedBox(height: 7,),
                LinearProgressIndicator(color: widget.pokemon.hp<50?Colors.red:Colors.green,
                  value: (widget.pokemon.hp)/100,)
                 ,SizedBox(height: 15,),
          LinearProgressIndicator(color: widget.pokemon.attack<50?Colors.red:Colors.green,
            value: (widget.pokemon.attack)/100,),
          SizedBox(height: 15,),
          LinearProgressIndicator(color: widget.pokemon.defence<50?Colors.red:Colors.green,
            value: (widget.pokemon.defence)/100,),
          SizedBox(height: 15,),
          LinearProgressIndicator(color: widget.pokemon.speed<50?Colors.red:Colors.green,
            value: (widget.pokemon.speed)/100,)


        ],
        ),
      ),
    ],
    );
  }
}