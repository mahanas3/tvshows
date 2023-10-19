import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tvshows/model/tvmodel.dart';

class Api {
  Future<List<Results>> getTvshow() async {
    final value = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/discover/tv?api_key=108bf3bd3841b1bc748b170761656099'));
    if (value.statusCode == 200) {
      var jsonData3 = (jsonDecode(value.body));
      print(jsonData3);
      var tvshows = jsonData3['results'].map<Results>((data) {
        return Results.fromJson(data);
      }).toList();
      return tvshows;
    }
    throw Exception('Error');
  }
}
