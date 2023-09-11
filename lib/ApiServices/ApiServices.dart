
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../Model/Pokemon.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';


class ApiServices {
  // String _url = "https://pokeapi.co/api/v2/pokemon" ;
  // Future<Response>getRequest async({
  //   // String suburl=" ",Map<String,dynamic> queryParams = const {}}) async {
  //   // String url = _url + suburl;
  //   // print(url);
  //
  //   final response= await http.get(Uri.parse(url));
  //   return response;


  Future<List<Pokemonname>> fetchPokemon() async {
    try {
      HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
        HttpLogger(logLevel: LogLevel.BODY),
      ]);
//final response= await getRequest();

      final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/'));
      print("response : $response");
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,// then parse the JSON.
        final result = json.decode(response.body);
        print("result type : ${result.runtimeType}");
        //return result;
        print("LIST ${result['results'].runtimeType}");
       final ans= (result['results'] as List).map((e) => Pokemonname.fromjson(e)).toList();

       return ans;
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        print(response.statusCode);
      }
    }
    catch (e) {
      print("Exception $e");
    }
return [];
  }

}
