// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:logintask/pages/client_screen/client_profile.dart';

class ListViewClient extends StatelessWidget {
  const ListViewClient({super.key});

  @override
  Widget build(BuildContext context) {
  // String sign ="$";

    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ClientProfileScreen(
                    
                  )),
        );
      },
      contentPadding: EdgeInsets.all(0),
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('assets/images/userImage.png',
),
      ),
      title: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Flexible(
              child:
                  Text("Sam billing", overflow: TextOverflow.ellipsis)),
          SizedBox(
            width: 10,
          ),
        // Text("Expert maid".toUpperCase())
        ],
      ),
      subtitle: Text("Expert maid".toUpperCase()),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const[
          Text(
            "Hire me",
            style: TextStyle(
              color: Color(0xff0395eb),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        Text(
            "2000" ,
            style: TextStyle(
              color: Color(0xff0395eb),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

