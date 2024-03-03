// class object vocabulary call api
class Vocabulary {
  final int id;
  final String vietnamese;
  final String english;
  final String pronunciation;

  Vocabulary(
      {required this.id,
      required this.vietnamese,
      required this.english,
      required this.pronunciation});
  factory Vocabulary.fromJson(Map<String,dynamic> json){
    return Vocabulary(
      id: json['ID'],
      vietnamese: json['TiengViet'],
      english: json['TiengAnh'],
      pronunciation: json['PhienAm']
    );
  }
}
