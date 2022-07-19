class Client {
  String? address;
  String? city;
  String? country;
  String? email;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? postalCode;
  String? state;

  Client(
      {this.address,
      this.city,
      this.country,
      this.email,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.postalCode,
      this.state});

  Client.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    country = json['country'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    phoneNumber = json['phone_number'];
    postalCode = json['postal_code'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['city'] = this.city;
    data['country'] = this.country;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['phone_number'] = this.phoneNumber;
    data['postal_code'] = this.postalCode;
    data['state'] = this.state;
    return data;
  }
}
