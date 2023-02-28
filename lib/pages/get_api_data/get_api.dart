import 'dart:convert';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:logintask/apiservices/api.dart';
import 'package:logintask/model/get_api_model.dart';
import 'package:logintask/model/get_api_model.dart';
import 'package:logintask/widget/appbar_widget.dart';
import 'package:logintask/widget/button_widget.dart';
import 'package:http/http.dart'as http;

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({super.key});

  @override
  State<GetDataScreen> createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  // late Future<Album> futureAlbum;
    Future<Album> getProductsApi () async {

     final response = await http.get(Uri.parse('http://159.65.156.175/oxford/api/profile.php?id=OXFSTU0103'));
     var data = jsonDecode(response.body.toString());
    //  var decodedResponse = jsonDecode(response.body);

      // Map<String, dynamic> markets = decodedResponse ;

     if(response.statusCode == 200){
      // data!.add(Data.fromJson(json));
   
      print(response.statusCode);
      print(Album.fromJson(data));
       return Album.fromJson(data);
     }else {
       return Album.fromJson(data);

     }
  }
  @override
  void initState() {
       
      getProductsApi ();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) =>
     Scaffold(
       appBar: buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.only(top: 20,left: 20, right: 20),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
                        ButtonWidget(text: "tap to see data",onClicked: () {
                                getProductsApi ();

        // futureAlbum = getData.fetchAlbum();
                        },),

               FutureBuilder<Album>(
            future: getProductsApi (),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.toString());
              } else if (snapshot.hasError) {
                return Text('${snapshot.error} ');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        
            ]
    
      ),)
       )) );
  }
  

}