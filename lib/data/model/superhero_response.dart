import 'package:flutter_proyect4/data/model/superohero_detail_reponse.dart';

class SuperheroResponse {
  final String response;
  final List<SuperoheroDetailReponse> result;

  //constructor normal
  SuperheroResponse({required this.response, required this.result});

  //constructor factory
  factory SuperheroResponse.fromJson(Map<String, dynamic> json){
    var list = json["results"] as List;
    List<SuperoheroDetailReponse> heroList = list.map((hero) => SuperoheroDetailReponse.fromJson(hero)).toList();

    return SuperheroResponse(response: json["response"], result: heroList);
  }
}
