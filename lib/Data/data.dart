import 'package:flutter/material.dart';
import 'package:pokebox_app/Model/Pokemon.dart';

import '../Model/Pokemon.dart';

const pokemonlist=[
Pokemon( name: 'Bulbasaur', image: 'asset/bulbasaur.jpg', height: '2 11',
    weight: '196 lbs', gender: 'male', ability: ['fire','ice'],
category: 'seed', Type: ['Grass','Poison'], Weak: ['fire','ice'], color: Color.fromARGB(
        74, 14, 222, 56), id: '001', species: 'reptile', hp: 90, attack: 90, defence: 90, speed: 95),
  Pokemon( name: 'Venusaur', image: 'asset/venusaur.jpg', height: '2 11',
      weight: '196 lbs', gender: 'male', ability: ['fire','ice'],
      category: 'seed', Type: ['Grass','Poison'], Weak: ['fire','ice'], color: Color.fromARGB(
          74, 14, 222, 56), id: '002', species: 'reptile', hp: 45, attack: 65, defence: 85, speed: 95),

  Pokemon( name: 'Ivysaur', image: 'asset/ivysaur.png', height: '3 15',
      weight: '215 lbs', gender: 'male', ability: ['fire','ice'],
      category: 'seed', Type: ['Grass','Poison'], Weak: ['fire','ice','psychic'], color: Color.fromARGB(
        74, 14, 222, 56), id: '003', species: 'reptile', hp: 45, attack: 65, defence: 76, speed: 67 ),
  Pokemon( name: 'Charizard', image: 'asset/charizard.png', height: '6.10',
      weight: '300 lbs', gender: 'male', ability: ['fire','ice'],
      category: 'seed', Type: ['sky','water'], Weak: ['Grass','electric'], color: Color.fromARGB(
100, 245, 61, 61), id: '004', species: 'reptile', hp: 45, attack: 65, defence: 75, speed:55),
  Pokemon( name: 'Charmeleon', image: 'asset/Charmeleon.png', height: '6.10',
      weight: '300 lbs', gender: 'male', ability: ['fire','ice'],
      category: 'seed', Type: ['sky','water'], Weak: ['Grass','electric'], color: Color.fromARGB(
          100, 245, 61, 61), id: '005', species: 'reptile', hp: 45, attack: 65, defence: 76, speed: 87),
  Pokemon( name: 'Charmender', image: 'asset/charmender.png', height: '6.10',
      weight: '300 lbs', gender: 'male', ability: ['fire','ice'],
      category: 'seed', Type: ['sky','water'], Weak: ['Grass','electric'], color: Color.fromARGB(
          100, 245, 61, 61), id: '007', species: 'reptile', hp: 65, attack: 60, defence: 85, speed: 95),


  Pokemon( name: 'Blastoise', image: 'asset/blastoise.png', height: '5.10',
      weight: '188 lbs', gender: 'male', ability: ['Torrent'],
      category: 'seed', Type: ['water'], Weak: ['Grass','electric'], color: Color.fromARGB(
          226, 50, 106, 243), id: '008', species: 'amphibion', hp: 65, attack: 65, defence: 75, speed: 94),

  Pokemon( name: 'Squirtle', image: 'asset/squirtle.png', height: '5.10',
      weight: '188 lbs', gender: 'male', ability: ['Blaze'],
      category: 'seed', Type: ['sellfish'], Weak: ['fire','electric'], color: Color.fromARGB(
          226, 50, 106, 243), id: '009', species: 'animal', hp: 45, attack: 65, defence: 85, speed: 95),
  Pokemon( name: 'Wartortle', image: 'asset/Wartortle.png', height: '5.10',
      weight: '188 lbs', gender: 'male', ability: ['fire','ice'],
      category: 'seed', Type: ['sellfish'], Weak: ['Grass','electric'], color: Color.fromARGB(
          226, 50, 106, 243), id: '010', species: 'animal', hp: 65, attack: 65, defence: 45, speed: 90),



  Pokemon( name: 'Pikachu', image: 'asset/pikachu.png', height: '1.10',
      weight: '100 lbs', gender: 'male', ability: ['fire','ice'],
      category: 'seed', Type: ['sellfish'], Weak: ['Grass','electric'], color: Color.fromARGB(
          255, 234, 241, 65), id: '004', species: 'animal', hp: 45, attack: 70, defence: 75, speed: 45),
];

// final name;
// final image;
// final height;
// final weight;
// final gender;
// final ability;
// final category;
// final List<String> Type;
// final List<String> Weak;