import 'dart:collection';

/**
 * Map yapısı da set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
 * Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
 * Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsiz olması gerekmektedir.
 * 
 * Map yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirden farklı elemanları içerir.
 * Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
 */

main(List<String> args) {   //süslü parantezde akla map ler gelecek. [] ise listeler.
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212}; //"keys":"değer"

  print(alanKodlari);
  print(alanKodlari["bursa"]);  //alanKodları["keys"]

  Map<String, dynamic> emre = { // keyler string. değerler karışık olabilir. değerler karışık ise dynamic eklenir.
    "soyad": "altunbilek",
    "yas": 34,
    "bekarMi": true
  };

  List sayilar = [0, 1, 2];

  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  deneme2['yas'] = 55;
  print(emre['yas']);

  for (String oankiAnahtar in emre.keys) {
    print(oankiAnahtar);    // oankiAnahtar = soyad, yaş, bekarmı?
    print(emre[oankiAnahtar]);
  }

  for (dynamic deger in emre.values) {
    print(deger);
  }

  for (var element in emre.entries) {  // entries --> key ve değeri aynı anda tutan bir yapı.
    print("Key : ${element.key} değeri : ${element.value}");
  }

  if (emre.containsKey('yas')) {
    print("Bulunan yaş değeri ${emre['yas']}");
  }
  print(emre);
}
