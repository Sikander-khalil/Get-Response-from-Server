class Data {
  final int userId;
  final String userName;
  final String password;
  Data({this.userId, this.userName, this.password});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      userId: json['userId'],
      userName: json['id'],
      password: json['title'],
    );
  }
}