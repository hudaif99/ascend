class ModelVolunteer {
  List<Volunteer>? volunteer;

  ModelVolunteer({this.volunteer});

  ModelVolunteer.fromJson(Map<String, dynamic> json) {
    if (json['volunteer'] != null) {
      volunteer = <Volunteer>[];
      json['volunteer'].forEach((v) {
        volunteer!.add(new Volunteer.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.volunteer != null) {
      data['volunteer'] = this.volunteer!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Volunteer {
  String? title;
  String? schoolname;
  String? school;
  String? gender;
  String? time;
  String? date;
  String? enddate;
  String? days;

  Volunteer(
      {this.title,
        this.schoolname,
        this.school,
        this.gender,
        this.time,
        this.date,
        this.enddate,
        this.days});

  Volunteer.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    schoolname = json['schoolname'];
    school = json['school'];
    gender = json['gender'];
    time = json['time'];
    date = json['date'];
    enddate = json['enddate'];
    days = json['days'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['schoolname'] = this.schoolname;
    data['school'] = this.school;
    data['gender'] = this.gender;
    data['time'] = this.time;
    data['date'] = this.date;
    data['enddate'] = this.enddate;
    data['days'] = this.days;
    return data;
  }
}
