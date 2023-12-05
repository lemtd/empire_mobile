class LoginModel {
  String authToken;
  String refreshToken;

  LoginModel({required this.authToken, required this.refreshToken});
  
  LoginModel.fromJson(Map<String, dynamic> json)
      : authToken = json['auth_token'] ?? '',
        refreshToken = json['refresh_token'] ?? '';

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['auth_token'] = this.authToken;
  //   data['refresh_token'] = this.refreshToken;
  //   return data;
  // }
}