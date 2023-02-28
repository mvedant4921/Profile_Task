// ignore_for_file: prefer_const_constructors

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:logintask/pages/client_screen/list_view.dart';
import 'package:logintask/widget/appbar_widget.dart';
import 'package:logintask/widget/button_widget.dart';

import '../../model/get_api_model.dart';


class ClientPage extends StatefulWidget {
  const ClientPage({super.key});

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
      // final user = UserPreferences.myUser;

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
              TextField(
                decoration:InputDecoration(
                  
                  hintText: "search maid"),
              ),
           const   SizedBox(height: 20,),
                           ListViewClient(),


                           SizedBox(height: 30,),
                           ButtonWidget(
        text: 'Tap to see data',
        onClicked: () {},
      ),

            ],
          ),
        ),
        
        
    
      ),)
    );
  }
  

}