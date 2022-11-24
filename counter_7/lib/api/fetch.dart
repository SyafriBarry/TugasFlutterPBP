import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';

List<bool> statusMovie = [];
Future<List<MyWatchList>> fetchToDo() async {
  var url = Uri.parse('https://sbarrystugas2pbp.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object ToDo
  List<MyWatchList> listWatch = [];

  for (var d in data) {
    if (d != null) {
      listWatch.add(MyWatchList.fromJson(d));
      statusMovie.add(MyWatchList.fromJson(d).watched == 'Yes');
    }
  }
  return listWatch;
}