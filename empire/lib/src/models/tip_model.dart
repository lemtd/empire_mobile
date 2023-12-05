class TipModel {
  late String title;
  late String description;
  late String image;
  late String id;

  TipModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    image = json['image'];
    id = json['id'];
  }
}
