/**
 * Bir diğer koleksiyon yapısı da Set yapısıdır.
 * List den en önemli farklı elemanları sıralı olarak tutmaz, bu durumda list lerde oldugu gibi indexleri kullanamayız
 * Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
 * 
 * index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışında listelerdeki methodlar set için de geçerlidir.
 * 
 */

main(List<String> args) {
  Set<String> isimler = Set(); //isimler setinde string veriler toplamak.
  // içine string atama with .add();
  isimler.add("emre");
  isimler.add("hasan");
  isimler.add("ali");
  isimler.add("emre");
  isimler.add("emre");
  isimler.add("fatma");
  if(isimler.contains("ayşe"))
  {
    print("set içinde emre kişisi vardır.");
  }else
  {
    print("girilen isim set içinde yer almamaktadır.");
  }

  bool sonucum = isimler.remove("emre"); // içeride emre varsa onu yok edebilmeye true döner.
  print("sonuc : " + sonucum.toString());

  print("*********");

  for (String s1 in isimler) {
    print("isim : $s1");
  }

  Set<int> numaralar = Set.from([1,2,3,4,5,6,7,8,8,214,45,23,3,8,9,2]);
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];

  for (int s1 in numaralar) {
    print("no : $s1");
  }
  numaralar.clear();
  numaralar.addAll(ciftSayilar);
   for (int s1 in numaralar) {     print("add alldan sonra no : $s1");   
   } 
   }
   
