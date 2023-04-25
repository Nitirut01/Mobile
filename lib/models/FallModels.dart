class FallModels {
  int? id;
  String? surname;
  String? firstname;
  String? imgUrl;
  String? age;
  String? sex;
  String? address;

  FallModels(
      {this.id,
      this.surname,
      this.firstname,
      this.imgUrl,
      this.age,
      this.sex,
      this.address});

  FallModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    surname = json['surname'];
    firstname = json['firstname'];
    imgUrl = json['img_url'];
    age = json['age'];
    sex = json['sex'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['surname'] = this.surname;
    data['firstname'] = this.firstname;
    data['img_url'] = this.imgUrl;
    data['age'] = this.age;
    data['sex'] = this.sex;
    data['address'] = this.address;
    return data;
  }

  String FallTable = """CREATE TABLE FallTable(
      id INTEGER PRIMARY KEY NOT NULL,
      surname TEXT,
      firstname TEXT,
      imgUrl TEXT,
      age INTEGER
      sex TEXT,
      address TEXT,
      )""";
}