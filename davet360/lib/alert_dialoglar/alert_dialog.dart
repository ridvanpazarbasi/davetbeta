import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class AlertDialogClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        actions: <Widget>[
          Container(
            height: 321,
            width: 327,
            child: Stack(
              children: <Widget>[
                Positioned(
                  right: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FeatherIcons.x,
                      size: 30,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset(
                            "assets/emoji.png",
                          ),
                          height: 52,
                          width: 54,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Tebrikler",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "     Etkinliğiniz başarılı bir şekilde \n                        oluşturuldu. \n\n  Arkadaşlarına haber verme zamanı.",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 56,
                            width: 199,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  FeatherIcons.share,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Paylaş",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
