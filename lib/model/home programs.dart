class ModelPrograms {
  List<Programs>? programs;

  ModelPrograms({this.programs});

  ModelPrograms.fromJson(Map<String, dynamic> json) {
    if (json['programs'] != null) {
      programs = <Programs>[];
      json['programs'].forEach((v) {
        programs!.add(new Programs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.programs != null) {
      data['programs'] = this.programs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Programs {
  String? image;
  String? title;
  String? content;

  Programs({this.image, this.title, this.content});

  Programs.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    data['content'] = this.content;
    return data;
  }
}
