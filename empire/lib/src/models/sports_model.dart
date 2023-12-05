class SportsModel {
  late String name;
  late String image;
  late String id;

  SportsModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    id = json['id'];
  }
}
