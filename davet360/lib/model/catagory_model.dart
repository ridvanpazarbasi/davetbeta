class Catagory {
  final String categoryID;
  final String dogumGunu;
  final String yeniIs;
  final String dugun;
  final String terfi;
  final String nisan;
  final String babyShower;
  final String tebrik;
  final String dogum;
  final String diger;

  Map<String, dynamic> toMap() {
    return {
      "dogumGunu": dogumGunu,
      'yeniIs': yeniIs,
      'dugun': dugun,
      'terfi': terfi,
      "nisan": nisan,
      "babyShower": babyShower,
      'tebrik': tebrik,
      "dogum": dogum,
      "diger": diger,
      "categoryID":categoryID,
    };
  }

  Catagory.fromMap(Map<String, dynamic> map)
      : dogumGunu = map['dogumGunu'],
        yeniIs = map['yeniIs'],
        dugun = map['dugun'],
        terfi = map["terfi"],
        nisan = map["nisan"],
        babyShower = map["babyShower"],
        tebrik = map['tebrik'],
        dogum = map["dogum"],
        diger = map["diger"],
        categoryID=map["categoryID"];

  @override
  String toString() {
    return 'Mesaj{categoryID : $categoryID,dogumGunu: $dogumGunu, yeniIs: $yeniIs, dugun: $dugun,terfi$terfi,nisan$nisan,babyShower$babyShower,tebrik$tebrik,dogum$dogum,diger$diger}';
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
