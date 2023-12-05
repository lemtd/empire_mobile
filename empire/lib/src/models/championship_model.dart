class ChampionshipModel {
  late String createdAt;
  late String name;
  late String image;
  late String id;

  ChampionshipModel.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    name = json['name'];
    image = json['image'];
    id = json['id'];
  }
}
