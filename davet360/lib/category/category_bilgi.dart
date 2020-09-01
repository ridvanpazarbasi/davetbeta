import 'package:flutter/material.dart';

class CategoryBilgi extends StatefulWidget {
  @override
  _CategoryBilgiState createState() => _CategoryBilgiState();
}

class _CategoryBilgiState extends State<CategoryBilgi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SliverAppBar(
        expandedHeight: 150.0,
        flexibleSpace: const FlexibleSpaceBar(
          title: Text('Available seats'),
        ),
        actions: <Widget>[
          Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Text("Başlık", style: TextStyle(fontSize: 35)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Bir düğün etkinliği oluşturarak arkadaşlarını davet edebilir, davetine katılamayacaklar için istek listeni veya ödeme seçeneklerini paylaşabilirsin.",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Center(
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Center(child: Text("1")),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      Text(
                        "Bir etkinlik adı oluştur, açıklama gir ve istediğin fotoğrafları ekle.",
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Center(
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Center(child: Text("2")),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      Text(
                        "Etkinlik seçeneklerini belirle. Ödeme seçeneği ve istek listesini bu aşamada belirtebilirsin.",
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Center(
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Center(child: Text("3")),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      Text(
                        "Son adım, artık oluşturduğun bu etkinliği arkadaşlarınla paylaşma zamanı!",
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Text(
                        "Kullanıcı Yorumları",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 140,
                                width: 230,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 140,
                                width: 230,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 140,
                                width: 230,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 34,
                bottom: 30,
                child: InkWell(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Yeni Etkinlik Oluştur ->",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    height: 56,
                    width: 343,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
