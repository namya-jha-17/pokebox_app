import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokebox_app/ApiServices/ApiServices.dart';
import 'package:pokebox_app/Model/Pokemon.dart';
import 'package:pokebox_app/widget/TypelistWidget.dart';
import 'package:pokebox_app/Screens/DetailsScreen.dart';


class PokemonWidget extends StatefulWidget{
 Pokemon pokemon;


 PokemonWidget(this.pokemon);

  @override
  State<PokemonWidget> createState() => _PokemonWidgetState();
}

class _PokemonWidgetState extends State<PokemonWidget> {
  ApiServices api =new ApiServices();
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  // }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(children:[InkWell(child:Container(
decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(),color: widget.pokemon.color ),
        clipBehavior: Clip.antiAlias,),
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailsScreen(widget.pokemon),

    )

    );}),
          Positioned(child: TypelistWidget(widget.pokemon),left:10,top: 30,),
          Positioned(left: 60,bottom :
             20, child: Image.asset(  widget.pokemon.image,height: 110,width: 120,),


          )

   ] );




  }
}