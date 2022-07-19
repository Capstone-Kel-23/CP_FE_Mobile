class CreateInvoice {
  List<AdditionalCosts>? additionalCosts;
  Client? client;
  String? date;
  String? dateDue;
  String? description;
  String? invoiceNumber;
  List<Items>? items;
  String? logoUrl;
  int? subTotal;
  String? typePayment;
  int? total;

  CreateInvoice(
      {this.additionalCosts,
      this.client,
      this.date,
      this.dateDue,
      this.description,
      this.invoiceNumber,
      this.items,
      this.logoUrl,
      this.subTotal,
      this.typePayment,
      this.total});

  CreateInvoice.fromJson(Map<String, dynamic> json) {
    if (json['additional_costs'] != null) {
      additionalCosts = <AdditionalCosts>[];
      json['additional_costs'].forEach((v) {
        additionalCosts!.add(new AdditionalCosts.fromJson(v));
      });
    }
    client =
        json['client'] != null ? new Client.fromJson(json['client']) : null;
    date = json['date'];
    dateDue = json['date_due'];
    description = json['description'];
    invoiceNumber = json['invoice_number'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    logoUrl = json['logo_url'];
    subTotal = json['sub_total'];
    typePayment = json['type_payment'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.additionalCosts != null) {
      data['additional_costs'] =
          this.additionalCosts!.map((v) => v.toJson()).toList();
    }
    if (this.client != null) {
      data['client'] = this.client!.toJson();
    }
    data['date'] = this.date;
    data['date_due'] = this.dateDue;
    data['description'] = this.description;
    data['invoice_number'] = this.invoiceNumber;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['logo_url'] = this.logoUrl;
    data['sub_total'] = this.subTotal;
    data['type_payment'] = this.typePayment;
    data['total'] = this.total;
    return data;
  }
}

class AdditionalCosts {
  String? name;
  int? total;
  String? type;

  AdditionalCosts({this.name, this.total, this.type});

  AdditionalCosts.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    total = json['total'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['total'] = this.total;
    data['type'] = this.type;
    return data;
  }
}

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

class Items {
  String? description;
  String? name;
  int? price;
  int? quantity;

  Items({this.description, this.name, this.price, this.quantity});

  Items.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    name = json['name'];
    price = json['price'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['name'] = this.name;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    return data;
  }
}
