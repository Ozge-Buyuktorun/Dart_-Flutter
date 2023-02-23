/**
 * Bazen değişkenler veya propertyler non-nullable olmalıdır ama ilk değer ataması hemen gerçekleşmeyecektir. bu durumlarda late anahtar kelimesi kullanırılır.
 * 
 * Bir değişkenin önüne late yazdıgınızda Dart'a şunları söylemiş olursunuz
 *  1- bu değişkene bir değer atama
 *  2- değeri sonradan atayacaksın
 *  3- Bana güven dart,valla bu değişkeni sen okumadan önce initialize edeceğim
 * 
 * Eğer değişkene değer atamadan okumaya çalışırsanız hata alırsınız.
 */
class Yemek {
  //tanımlama
  late final String tanim; //late:calıstırmadan önce initiliaze(atmaasını) yapacağım demek.
  late final int fiyat;
  //functions
  Yemek(int fiyat) {
    this.fiyat = fiyat;
  }
  void setTanim(String tanim) {
    this.tanim = tanim; //atama işlemi.
  }
}
main(List<String> args) {
  final yemegim = Yemek(100); //fiyat ataması
  yemegim.setTanim('kuru fasulye'); //tanım ataması.
  print(yemegim.tanim);
  print(yemegim.fiyat);
}
