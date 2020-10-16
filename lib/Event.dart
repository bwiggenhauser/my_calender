class Event {
  int id;
  String name;
  int date;

  Event({this.id, this.name, this.date});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'date': date};
  }

  Event.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    date = map['date'];
  }
}
