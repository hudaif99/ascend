class ModelPrograms {
  List<Program>? program;

  ModelPrograms({this.program});

  ModelPrograms.fromJson(Map<String, dynamic> json) {
    if (json['program'] != null) {
      program = <Program>[];
      json['program'].forEach((v) {
        program!.add(new Program.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.program != null) {
      data['program'] = this.program!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Program {
  String? title;
  String? content;
  String? location;
  String? date;
  String? duration;

  Program({this.title, this.content, this.location, this.date, this.duration});

  Program.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
    location = json['location'];
    date = json['date'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['content'] = this.content;
    data['location'] = this.location;
    data['date'] = this.date;
    data['duration'] = this.duration;
    return data;
  }
}
