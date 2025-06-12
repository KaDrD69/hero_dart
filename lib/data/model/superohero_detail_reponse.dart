class SuperoheroDetailReponse {
  final String id;
  final String name;

  SuperoheroDetailReponse({required this.id, required this.name});

  factory SuperoheroDetailReponse.fromJson(Map<String, dynamic> json){
    return SuperoheroDetailReponse(id: json["id"], name: json["name"]);
  }
}