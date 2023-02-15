void main(List<String> args) {
  var listem = <String>[];  //list
  var myMap = <String, dynamic>{'yas': 34}; //hem key hem değer var o yüzden map.
  var mySet = <String>{'emre', 'hasan'};  

  var tekSayilar = [1, 3, 5];  //list
  var ciftSayilar = [2, 4, 6]; // List

//spreads operator
  var sonListe = [...tekSayilar, ...ciftSayilar];
  /*  sonListe.addAll(tekSayilar);
  sonListe.addAll(ciftSayilar); */
// for map
  var map1 = {'ad': 'emre'};
  var map2 = {'yas': 34};
  var sonMap = {...map1, ...map2};  // sonmap = {"ad","emre","yas",34} görüntülenecek.
// for set   // eleman tekrarlarını göstermez setler.
  var set1 = {'hasan'};
  var set2 = {'emre'};
  var set3 = {'ayse'};
  var set4 = {'emre'};

  var sonSetYapisi = {...set1, ...set2, ...set3, ...set4};
  print(sonListe);
  print(sonMap);
  print(sonSetYapisi);

  
}
