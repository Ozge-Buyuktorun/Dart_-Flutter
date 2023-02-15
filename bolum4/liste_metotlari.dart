main(List<String> args) {
  List<int> sayilar = [10, 5, 4, 3, 11, 9, 15];
  //sabit boyutlu listelerde remove komutu çalışmaz.
  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }

  print("Boş mu :" + sayilar.isEmpty.toString());
  print("Eleman sayısı: ${sayilar.length}");
  print("Ters sırada ${sayilar.reversed}");

  sayilar.add(23);
  print(sayilar);
  sayilar.remove(3); //verilen elemanı siler. ilk gördüğü 3 rakamını çıkarır.
  print(sayilar);
  sayilar.removeAt(1); //index =1 de ki elemanı remove eder.
  print(sayilar); 

  //sayilar.clear(); tüm sayilar listesini temizler.
  if (sayilar.contains(9)) { // eğer 9 içeriyorsa sayilar listesi....
    print("Listede 9 var");
  } else {
    print("Listede 9 yok");
  }
  print(sayilar);

  print(sayilar.elementAt(2)); //elementAt: 2inci indexteki elemanı bul.
  print(sayilar.indexOf(11)); //  içeriğinde 11 olanın index sayısını getir. elementAt ile tam zıt çalışır.
  sayilar.shuffle(); //Rastgele liste elemanlarının yerini değiştirir.
  print(sayilar);
}
