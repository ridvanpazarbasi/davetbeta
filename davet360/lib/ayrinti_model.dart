import 'package:flutter/material.dart';

class Ayrinti with ChangeNotifier {
  final String categoryID;
  final String baslik;
  final String bilgilendirmeBaslik;
  final Color categoryColor;
  final Image categoryImage;
  final String anaBilgi;

  Ayrinti(this.categoryID, this.baslik, this.bilgilendirmeBaslik,
      this.categoryColor, this.categoryImage, this.anaBilgi);

  Map<String, dynamic> toMap() {
    return {
      "categoryID": categoryID,
      'baslik': baslik,
      'bilgilendirmeBaslik': bilgilendirmeBaslik,
      'anaBilgi': anaBilgi,
      "color": categoryColor,
      "image": categoryImage,
    };
  }

  Ayrinti.fromMap(Map<String, dynamic> map)
      : baslik = map['baslik'],
        bilgilendirmeBaslik = map['bilgilendirmeBaslik'],
        anaBilgi = map['anaBilgi'],
        categoryID = map["categoryID"],
        categoryColor = map["color"],
        categoryImage = map["image"];

  @override
  String toString() {
    return 'Mesaj{baslik: $baslik, bilgilendirmeBaslik: $bilgilendirmeBaslik, anaBilgi: $anaBilgi,categoryID$categoryID,color$categoryColor,image$categoryImage}';
  }

  /* anaBilgi:
            "Bir yeni iş etkinliği oluşturarak arkadaşlarını davet edebilir, davetine katılamayacaklar için istek listeni veya ödeme seçeneklerini paylaşabilirsin.",
        backColor: Colors.blue,
        aciklama1:
            "Bir etkinlik adı oluştur, açıklama gir ve istediğin fotoğrafları ekle.",
        aciklama2:
            "Etkinlik seçeneklerini belirle. Ödeme seçeneği ve istek listesini bu aşamada belirtebilirsin.",
        aciklama3:
            " Son adım, artık oluşturduğun bu etkinliği arkadaşlarınla paylaşma zamanı!");
 
  }*/
}
