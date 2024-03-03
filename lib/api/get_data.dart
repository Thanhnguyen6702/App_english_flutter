import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:learn_english/database/tables.dart';

class ApiClient{
  static const String baseURL = 'https://thanhhust.x10.mx/flutter/';
  // get list vocabulary of user
  Future<List<Vocabulary>> parseVocabulary(String account) async {
    final response = await http.get(Uri.parse('${baseURL}getVocabulary.php?account=$account'));
    if(response.statusCode ==200){
      return compute(fetchVocabulary, response.body);
    }
    else{
      throw Exception("Failed to load Vocab");
    }
  }
  List<Vocabulary> fetchVocabulary(String respon){
    final parsed = (jsonDecode(respon) as List).cast<Map<String,dynamic>>();
    return parsed.map<Vocabulary>((json) => Vocabulary.fromJson(json)).toList();
  }
}