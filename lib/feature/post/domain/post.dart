class Post {
  String date;
  String detail;
  int id;
  String image;
  String name;

  Post({this.date, this.detail, this.id, this.image, this.name});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      date: json['date'],
      detail: json['detail'],
      id: json['id'],
      image: json['image'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['detail'] = this.detail;
    data['id'] = this.id;
    data['image'] = this.image;
    data['name'] = this.name;
    return data;
  }
}
