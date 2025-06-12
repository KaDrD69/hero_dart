import 'package:flutter/material.dart';
import 'package:flutter_proyect4/data/model/superhero_response.dart';
import 'package:flutter_proyect4/data/repository.dart';

class SuperheroSearchScreen extends StatefulWidget {
  const SuperheroSearchScreen({super.key});

  @override
  State<SuperheroSearchScreen> createState() => _SuperheroSearchScreenState();
}

class _SuperheroSearchScreenState extends State<SuperheroSearchScreen> {
  Future<SuperheroResponse?> ?_superheroInfo;
  Repository repository = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SuperHero Search"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Busca un Superhéroe",
                prefixIcon: Icon(Icons.search),  
                border: OutlineInputBorder()
              ),            
              onChanged: (texto) {
                setState(() {
                  _superheroInfo = repository.fetchSuperheroInfo(texto);
                });
              },
            ),
          ),
          FutureBuilder(future: _superheroInfo, builder: (context,snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return CircularProgressIndicator();
            }else if (snapshot.hasError){
              return Text("Error: ${snapshot.error}");
            }else if (snapshot.hasData){
              var superheroList = snapshot.data?.result;
              return SizedBox(
                height: 300,
                child: ListView.builder(itemCount: superheroList?.length ?? 0,
                  itemBuilder: (context, index){
                    if(superheroList != null) {
                      return Text(superheroList[index].name);
                    }else{
                      return Text("Error");
                    }
                  }),
              );
            }else{
              return Text("No hay resultados");
            }
          })
        ],
      )
    );
  }
}

