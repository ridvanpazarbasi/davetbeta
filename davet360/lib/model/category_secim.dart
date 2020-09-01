import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CatagorySecim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 145),
          child: Text(
            "Davet 360",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.grey[200],
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FeatherIcons.bell,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
child:Column(children: <Widget>[


  
],),

      ),
    );
  }
}
