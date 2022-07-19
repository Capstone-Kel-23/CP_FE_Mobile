class Login {
  String? email;
  String? password;

  Login({this.email, this.password});

  Login.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}



// class Login {
//   int? code;
//   String? data;
//   String? message;
//   bool? status;

//   Login({this.code, this.data, this.message, this.status});

//   Login.fromJson(Map<String, dynamic> json) {
//     code = json['code'];
//     data = json['data'];
//     message = json['message'];
//     status = json['status'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['code'] = this.code;
//     data['data'] = this.data;
//     data['message'] = this.message;
//     data['status'] = this.status;
//     return data;
//   }
// }
