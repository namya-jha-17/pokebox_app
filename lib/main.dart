import 'package:flutter/material.dart';
import 'package:pokebox_app/Model/Pokemon.dart';
import 'package:pokebox_app/widget/TypelistWidget.dart';

import 'Screens/NameScreens.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home:Scaffold(
  appBar: AppBar(backgroundColor: Colors.white,
    leading: InkWell(child: Icon(Icons.arrow_back,color: Colors.black,),),
    actions: [Icon(Icons.list,color: Colors.black,),SizedBox(width:10)],

    elevation: 0,

  ),body:Column( crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container( margin:EdgeInsets.all(20),   height: 30,width:100,child:
     Text('Pokedex',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
 ),
   const Expanded(child: NameScreens())
],)

)



);
       // This trailing comma makes auto-formatting nicer for build methods.

  }
}
