class Video {

// Dados
late String _id;
late String _title;
late String _description;
late String _thumbnail;

// Construtor
Video();

// Mapeamento
Map<String, dynamic> toMap() {
  Map<String, dynamic> map;
  map = {
    "id": this.id,
    "title": this.title,
    "description": this.description,
    "thumbnail": this.thumbnail,
  };
  return map;
}

// Getters and Setters
String get thumbnail => _thumbnail;

set thumbnail(String value) {
  _thumbnail = value;
}

String get description => _description;

set description(String value) {
  _description = value;
}

String get title => _title;

set title(String value) {
  _title = value;
}

String get id => _id;

set id(String value) {
  _id = value;
}
}