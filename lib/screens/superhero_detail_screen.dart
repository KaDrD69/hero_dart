import 'package:flutter/material.dart';
import 'package:flutter_proyect4/data/model/superohero_detail_reponse.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperoheroDetailReponse superhero;  

  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(superhero.name),
      ),
      body: Column(
        children: [
          Image.network(superhero.url, height: 300, width: double.infinity, fit: BoxFit.cover, alignment: Alignment(0, -0.6),),
          Text(superhero.name, style: TextStyle(fontSize: 28),),
          Text(superhero.realName, style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic))
        ],
      ),
    );
  }
}