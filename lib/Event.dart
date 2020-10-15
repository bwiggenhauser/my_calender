class Event {
  final int id;
  final String name;
  final int date;

  Event({this.id, this.name, this.date});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'date': date};
  }

  fromMap(Map<String, dynamic> map) {
    int myID = map['id'];
    String myName = map['name'];
    int myDate = map['date'];
    print('$myID, $myName, $myDate');
  }
}
