class Register {
  String? email;
  String? fullname;
  String? password;
  String? username;

  Register({this.email, this.fullname, this.password, this.username});

  Register.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    fullname = json['fullname'];
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['fullname'] = this.fullname;
    data['password'] = this.password;
    data['username'] = this.username;
    return data;
  }
}
