/// id : "ephkey_1PCl1xBJPGZ5kdZrtXG4HoAZ"
/// object : "ephemeral_key"
/// associated_objects : [{"id":"cus_Q2n33TF6I3yE8M","type":"customer"}]
/// created : 1714838505
/// expires : 1714842105
/// livemode : false
/// secret : "ek_test_YWNjdF8xUDlVeFBCSlBHWjVrZFpyLGxiWjVlMmh1d0tvWE5qbGN3UzRyQ0xPbzR6c0VaTDg_00aM2yTDNw"

class EphemeralKeyModel {
  EphemeralKeyModel({
    this.id,
    this.object,
    this.associatedObjects,
    this.created,
    this.expires,
    this.livemode,
    this.secret,
  });

  EphemeralKeyModel.fromJson(dynamic json) {
    id = json['id'];
    object = json['object'];
    if (json['associated_objects'] != null) {
      associatedObjects = [];
      json['associated_objects'].forEach((v) {
        associatedObjects?.add(AssociatedObjects.fromJson(v));
      });
    }
    created = json['created'];
    expires = json['expires'];
    livemode = json['livemode'];
    secret = json['secret'];
  }
  String? id;
  String? object;
  List<AssociatedObjects>? associatedObjects;
  int? created;
  int? expires;
  bool? livemode;
  String? secret;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['object'] = object;
    if (associatedObjects != null) {
      map['associated_objects'] =
          associatedObjects?.map((v) => v.toJson()).toList();
    }
    map['created'] = created;
    map['expires'] = expires;
    map['livemode'] = livemode;
    map['secret'] = secret;
    return map;
  }
}

/// id : "cus_Q2n33TF6I3yE8M"
/// type : "customer"

class AssociatedObjects {
  AssociatedObjects({
    this.id,
    this.type,
  });

  AssociatedObjects.fromJson(dynamic json) {
    id = json['id'];
    type = json['type'];
  }
  String? id;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    return map;
  }
}
