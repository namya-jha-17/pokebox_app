import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokebox_app/Model/Pokemon.dart';

import 'AboutWidget.dart';
import 'BaseStatWidget.dart';
import 'EvolutionWidget.dart';
import 'MovesWidget.dart';

class DetailWidget extends StatefulWidget {
  Pokemon pokemon;

  @override
  State<DetailWidget> createState() => _DetailWidgetState();

  DetailWidget(this.pokemon);
}

class _DetailWidgetState extends State<DetailWidget>
    with TickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=TabController(vsync: this, length: 4);
  }
  @override
  Widget build(BuildContext context) {
    return Container( width :MediaQuery.of(context).size.width,height:  480 ,
padding: EdgeInsets.only(top: 60),
      decoration:BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.all(
              Radius.circular(50))) ,
      child: Column(
      //    crossAxisDirection: CrossAxisAlignment.down,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,


         // verticalDirection: VerticalDirection.down,
          children: [ TabBar(isScrollable: true,labelColor: Colors.black,
          controller: _controller,
          tabs: [
            Tab(
              text: 'About',
            ),
            Tab(
              text: 'Base Stat',
            ),
            Tab(
              text: 'Evolution',
            ),
            Tab(
              text: 'Moves',
            ),]
      ),

         Expanded(child: TabBarView(
           controller: _controller,
          //physics: BouncingScrollPhysics(),
       //   dragStartBehavior: DragStartBehavior.down,
          children: [
            AboutWidget(widget.pokemon),
            BaseStatWidget(widget.pokemon),
            EvolutionWidget(),
            MovesWidget(),
          ],
        ),
         ),
      ]),

    );






  }
}
