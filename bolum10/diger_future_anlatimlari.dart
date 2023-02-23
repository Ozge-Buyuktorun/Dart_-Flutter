main(List<String> args) async {  //asenkron: zaman uyumsuz
  print("Program basladi");  //araya bir future ekleyelim. 0 sn duration'lı.
  Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik işlem gerçekleşiyor...");
  });
  print("Program bitti");

  Future<int> toplam = Future(() {
    int toplam = 0;
    for (int i = 0; i < 1000000000; i++) {
      toplam = toplam + i;
    }
    //return toplam;
    throw Exception("Toplam hesaplanamadı");
  });

  //toplam.then((int toplam) => print(toplam)).catchError((hata) => print(hata));

  try {  //async await try-catch. catch ile eror yakalarız. 
    int forSonuc = await toplam;
    print("**** $forSonuc");
  } catch (e) {
    print(e);
  }

  var f2 = Future.value('emre'); //mock data yansıması yaparken. İnternetten getirilmiş gibi.
  var f3 = Future.error('Hata ile biten future');
  
  f3.catchError((hata) => print(hata));
}
