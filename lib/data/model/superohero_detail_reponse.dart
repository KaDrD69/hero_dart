class SuperoheroDetailReponse {
  final String id;
  final String name;
  final String url;
  final String realName;

  SuperoheroDetailReponse({
    required this.id,
    required this.name,
    required this.url,
    required this.realName,
  });

  factory SuperoheroDetailReponse.fromJson(Map<String, dynamic> json) {
    return SuperoheroDetailReponse(
      id: json["id"],
      name: json["name"],
      url: json["image"]["url"],
      realName: json["biography"]["full-name"],
    );
  }
}
