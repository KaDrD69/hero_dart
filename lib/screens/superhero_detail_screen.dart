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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(superhero.url, height: 300, width: double.infinity, fit: BoxFit.cover, alignment: Alignment(0, -0.6),),
            Text(superhero.name, style: TextStyle(fontSize: 28),),
            Text(superhero.realName, style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
           // Text(superhero.powerStatsResponse.combat, style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            SizedBox(
              height: 130,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(height: (double.tryParse(superhero.powerStatsResponse.power) ?? 0).clamp(0, 100), width: 20, color: Colors.red,),
                      Text("Power")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(height: (double.tryParse(superhero.powerStatsResponse.intelligence) ?? 0).clamp(0, 100), width: 20, color: Colors.blue,),
                      Text("intelligence")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(height: (double.tryParse(superhero.powerStatsResponse.strength) ?? 0).clamp(0, 100), width: 20, color: Colors.grey,),
                      Text("Strength")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(height: (double.tryParse(superhero.powerStatsResponse.speed) ?? 0).clamp(0, 100), width: 20, color: Colors.green,),
                      Text("speed")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(height: (double.tryParse(superhero.powerStatsResponse.durability) ?? 0).clamp(0, 100), width: 20, color: Colors.orange,),
                      Text("Durability")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(height: (double.tryParse(superhero.powerStatsResponse.combat) ?? 0).clamp(0, 100), width: 20, color: Colors.black,),
                      Text("Combat")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}