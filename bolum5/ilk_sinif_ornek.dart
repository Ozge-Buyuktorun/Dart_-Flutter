//Nesneye yönelimli programlamaya giriş
/**
 * Sınıf : Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir
 * Istedigimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
 
 * Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
 * Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır
 */
main(List<String> args) {
  int sayi = 5;
  var sayi2 = 10;
  Ogrenci emre = Ogrenci(); // ogrenci class ı içinde emre için bir alan oluşturuldu.
  emre.ogrAd = "emre altunbilek";  //emreye atama yapılır.
  emre.ogrNo = 292;
  emre.aktifMi = true;
  Ogrenci hasan = Ogrenci();
  Ogrenci ayse = Ogrenci();

  var kemal = Ogrenci();
}
class Ogrenci { // class adları büyük harfle başlar.
  //instance variables   : emre -> instance. aşağıdakiler ise emreye ait variables.
  int ogrNo = 1;   // null olamayan değerler için ilk değer ataması.
  String? ogrAd = ""; // ? null ihtimali için konur.
  bool? aktifMi = true; // ? null olma ihtimali için konur.

  void dersCalis() {
    print("Öğrenci ders calisiyor...");
  }
}
