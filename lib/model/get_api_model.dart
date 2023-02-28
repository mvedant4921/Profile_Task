class Album {
 List<Data>? data;

  Album({this.data});

  Album.fromJson( dynamic json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
static String? uname;
  String? name;
  String? standard;
  String? section;
  String? fatName;
  String? motName;
  String? fatMob;

  Data(
      {
      this.name,
      this.standard,
      this.section,
      this.fatName,
      this.motName,
      this.fatMob});

  Data.fromJson( dynamic json) {
    uname = json['uname'];
    name = json['name'];
    standard = json['standard'];
    section = json['section'];
    fatName = json['fat_name'];
    motName = json['mot_name'];
    fatMob = json['fat_mob'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data['uname'] = this.uname;
    data['name'] = this.name;
    data['standard'] = this.standard;
    data['section'] = this.section;
    data['fat_name'] = this.fatName;
    data['mot_name'] = this.motName;
    data['fat_mob'] = this.fatMob;
    return data;
  }
}