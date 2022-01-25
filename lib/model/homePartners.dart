class ModelPartners {
  List<Partners>? partners;

  ModelPartners({this.partners});

  ModelPartners.fromJson(Map<String, dynamic> json) {
    if (json['partners'] != null) {
      partners = <Partners>[];
      json['partners'].forEach((v) {
        partners!.add(new Partners.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.partners != null) {
      data['partners'] = this.partners!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Partners {
  String? image;
  String? title;
  String? content;
  String? email;
  String? website;

  Partners({this.image, this.title, this.content, this.email, this.website});

  Partners.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    content = json['content'];
    email = json['email'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    data['content'] = this.content;
    data['email'] = this.email;
    data['website'] = this.website;
    return data;
  }
}
