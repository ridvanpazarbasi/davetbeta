import 'package:flutter/material.dart';

class CatagorySecimModel extends StatelessWidget {
  final String categoryBaslik;
  final Color catagoryColor;
  final Image catagoryImage;

  const CatagorySecimModel(
      {Key key, this.categoryBaslik, this.catagoryColor, this.catagoryImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 140,
            width: 164,
            decoration: BoxDecoration(
              color: catagoryColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
              child: Text(
                "Doğum Günü",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            child: Container(
                height: 140,
                width: 164,
                child: Image.asset("assets/register.png")),
          ),
        ],
      ),
    );
  }
}
