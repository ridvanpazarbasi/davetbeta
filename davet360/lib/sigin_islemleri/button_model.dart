import 'package:flutter/material.dart';

class GirisButon extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final double radius;
  final double yukseklik;
  final Widget buttonIkon;
  final VoidCallback onPress;

  const GirisButon(
      {Key key,
      this.buttonText,
      this.buttonColor: Colors.cyan,
      this.textColor: Colors.white,
      this.radius: 16,
      this.yukseklik: 40,
      this.buttonIkon,
      this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: SizedBox(
        height: yukseklik,
        child: RaisedButton(
          onPressed: onPress,
          color: buttonColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buttonIkon,
              Text(
                buttonText,
                style: TextStyle(fontSize: 20, color: textColor),
              ),
              Opacity(opacity: 0, child: buttonIkon),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
          ),
        ),
      ),
    );
  }
}
