import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokebox_app/ApiServices/ApiServices.dart';
import 'package:pokebox_app/Model/Pokemon.dart';
import 'package:pokebox_app/widget/PokemonWidget.dart';

//import 'package:pokebox_app/ApiServices//ApiServices.dart';
import '../Data/data.dart';

class NameScreens extends StatefulWidget {
  const NameScreens({super.key});

  @override
  State<NameScreens> createState() => _NameScreensState();
}

class _NameScreensState extends State<NameScreens> {
  late Future<List<Pokemonname>>  futPokemon;
  late ApiServices api =  ApiServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futPokemon = api.fetchPokemon();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

 //   Future<List<Pokemon>> pokemonlistff = futPokemon;
    return Scaffold(
        body: Padding(
        padding: EdgeInsets.all(10),
    child: FutureBuilder<List<Pokemonname>>(
    future: futPokemon,
    builder: (context,   snapshot) {
      print("snapshot : $snapshot");
      if (snapshot.connectionState == ConnectionState.done) {
    if (snapshot.hasError) {
    return Text('Error: ${snapshot.error}');
    } else
    if (snapshot.hasData) {
          //List <Pokemon>pokemonList = snapshot.data!.map((e) => Pokemon.fromjson(e as Map<String, dynamic>)).toList();
    //  List<Pokemon>? pokemonList = snapshot.data!.map((map) => Pokemon.fromjson(map)).toList();

      return GridView.builder(
            itemCount: snapshot.data?.length??0,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 10),
            itemBuilder: (BuildContext context, int index) {
              return// Container(child: Text('${snapshot.data?[index].name}'));
              PokemonWidget(snapshot.data![index].Url );
            }
      );
      }

      }
      return CircularProgressIndicator();
    }
  )
      ),
    );
    }
    }
