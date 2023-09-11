import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Pokemon {
  final String id;
  final String name;
  final String image;
  final String height;
  final String weight;
  final String gender;
  final List<String> ability;
  final String category;
  final String species;
  final Color color;
  final int hp;
  final int attack;
  final int defence;
  final int speed;
  final List<String>Type;
  final List<String> Weak;


  const Pokemon(
      {required this.Type, required this.Weak, required this.hp, required this.attack, required this.defence, required this.speed, required this.species, required this.id, required this.name, required this.image, required this.height, required this.weight, required this.gender,
        required this.ability,
        required this.category,
        required this.color, //required this.Weak
      });


  factory Pokemon.fromjson(Map<String, dynamic> map) {
    return Pokemon(
      id: map['id'],
      name: map['name'],
      hp: map['hp'],
      attack: map['attack'],
      defence: map['defence'],
      speed: map['speed'],
      species: map['species'],
      image: map['image'],
      height: map['height'],
      weight: map['weight'],
      gender: map['gender'],
      ability: map['ability'],
      category: map['category'],
      Type: map['Type[]'],
      Weak: map['Weak[]'],
      color: map['color'],

    );}


    @override
    String toString() {
      return 'Pokemon{id: $id, name: $name, image: $image, '
          'height: $height, weight: $weight, gender: $gender, '
          'ability: $ability, category: $category, species: $species, color: $color, '
          'hp: $hp, attack: $attack, defence: $defence, speed: $speed, '
          'Type: $Type, Weak: $Weak}';
    }
  }
class Pokemonname {
  late final String name;
  late final Pokemon Url;

  Pokemonname({required this. name, required this.Url});

  factory Pokemonname.fromjson(map) {
    return Pokemonname(
        name: map["name"],
        Url: map["url"]
    );
  }

}