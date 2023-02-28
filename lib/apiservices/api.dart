import 'dart:convert';

import 'package:logintask/model/get_api_model.dart';
class getData{  
  List<Album> Listdata= [];
static Future<Album> fetchAlbum() async {
  var http;
  final response = await http
      .get(Uri.parse('http://159.65.156.175/oxford/api/profile.php?id=OXFSTU0103'));
 var data =jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
   print(response.body);
    return Album.fromJson(data);
    

  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
       print(response.body);

    throw Exception('Failed to load album');
  }
}
}