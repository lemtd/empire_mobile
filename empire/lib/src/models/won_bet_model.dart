class WonBetModel {
  late String user;
  late String userAvatar;
  late String platform;
  late double score;
  late String id;

  WonBetModel.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    userAvatar = json['user_avatar'];
    platform = json['platform'];
    score = json['score'].toDouble();
    id = json['id'];
  }
}
