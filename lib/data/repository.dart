import 'dart:convert';

import 'package:flutter_proyect4/data/model/superhero_response.dart';
import 'package:http/http.dart' as http;
class Repository {

  Future<SuperheroResponse?> fetchSuperheroInfo(String name) async {
    final response = await http.get(Uri.parse(
      "https://superheroapi.com/api/0e39e5c54532b3bbfa81d5a059059c27/search/$name"
    ));

    if(response.statusCode == 200){
      var decodedJson = jsonDecode(response.body);
      SuperheroResponse superheroResponse = SuperheroResponse.fromJson(decodedJson);
      return superheroResponse;
    }else{
      return null;

    }
  }
}
