class ContactsModel {
  List<ContactModel>? results;

  ContactsModel({this.results});

  ContactsModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <ContactModel>[];
      json['results'].forEach((v) {
        results!.add(ContactModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ContactModel {
  String? objectId;
  String? name;
  String? lastName;
  String? number;
  String? address;
  String? image;
  String? userId;

  ContactModel({
    this.objectId,
    this.name,
    this.lastName,
    this.number,
    this.address,
    this.image,
    this.userId,
  });

  ContactModel.fromJson(Map<String, dynamic> json) {
    objectId = json['objectId'];
    name = json['name'];
    lastName = json['lastName'];
    number = json['number'];
    address = json['address'];
    image = json['image'];
    userId = json['user']['objectId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['objectId'] = objectId;
    data['name'] = name;
    data['lastName'] = lastName;
    data['number'] = number;
    data['address'] = address;
    data['image'] = image;
    data['user']['objectId'] = userId;
    return data;
  }
}
