class BonusModel {
  late String platform;
  late String discount;
  late String id;

  BonusModel.fromJson(Map<String, dynamic> json) {
    platform = json['platform'];
    discount = json['discount'];
    id = json['id'];
  }
}
