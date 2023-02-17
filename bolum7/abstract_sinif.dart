/** Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
 * Abstract sınıflardan nesne üretilemez , abstract sınıflarda normal ve abstract methodlar olur
 * abstract methodlar alt sınıflarca override edilmek zorundadır.
 * Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.
 */
import 'dart:convert';
import 'dart:io';
main(List<String> args) {
  print("(Kare için s1, dirtdörtgen için s2, cember için)Lütfen seciminizi giriniz: ");
  String secim = stdin.readLineSync()!;
  
  List<Sekil> tumSekiller = []; 
  // tüm şekiller listesine kare dikdörtgen ve cember classlarını ekleriz.
  if (secim == 's1')
  { 
     Sekil s1 = Kare(3); // s1 adında bir kare objesi oluşturulur.
     print(s1.alanHesapla()); // s1 e ait abstract classlar çağırılır.
     print(s1.cevreHesapla());
     s1.selamla();  //s1 içindeki selamla fonksiyonu çağrılır.
     tumSekiller.add(s1); // tüm şekiller listesine s1 objesi eklenir.
    List<Kare> tumKareler = [];
      print("Bu class çalışıyor mu test etmek ister misin? E/H");
      String cevap = stdin.readLineSync()!; // cevap adında bir string değer kaydederiz. cevap null olabilir (!) ünlem kullanırız.
      if (cevap == 'E'){  
        test(s1);
        } else return false;
  }else if ( secim == 's2') {
    Sekil s2 = Dikdortgen(4, 6);  // kenar uzunluğu 4, 6 olan s2 objesi oluşturulur.
    print(s2.alanHesapla()); //abstract class cağırılır.
    print(s2.cevreHesapla());
    s2.selamla();
    tumSekiller.add(s2); //s2 objesi tüm şekiller Listesine  eklenir.
    print("Bu class çalışıyor mu test etmek ister misin? E/H");
    String cevap = stdin.readLineSync()!;
      if (cevap == 'E')
      {
      test(s2);
      }else return false;
    List<Dikdortgen> tumDikdortgenler = [];
  } else if (secim == 's3')  {
      print("Lütfen yariçap değeri için pozitif bir tam sayi giriniz.");
      int r = int.parse(stdin.readLineSync()!);
      print(" Lütfen pi sayisi olarak kaç kullanmak istediğinizi giriniz: 3 / 3.14 ? ");
      double pi = double.parse(stdin.readLineSync()!);
      Sekil s3 = Cember(r, pi); // s3 isminde cember objesi oluşturulur.
      print(s3.alanHesapla());
      print(s3.cevreHesapla());
      s3.selamla();
      tumSekiller.add(s3);
        print("Bu class çalışıyor mu test etmek ister misin? E/H");
        String cevap = stdin.readLineSync()!;
        if (cevap == 'E')
        {
        test(s3);
        }else return false;
        List<Cember> tumCemberler = [];  } 
}
void test(Sekil sekil) {
  print("this is a test output line.The test is working truely. ");
  sekil.selamla();
}
abstract class Sekil {   //soyut örnekler.
  double alanHesapla();  //gövdesi yazılmamış fonksiyondur.
  double cevreHesapla(); // gövdesi yazılmamış fonksiyondur.
  void selamla() {
    print("Ben sekil sınıfındanım");
  }
}
class Kare extends Sekil { //somut örnekler
  int kenar;
  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }
  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }
  @override
  void selamla() {
    print("Ben kare sınıfındanım");
  }
}
class Dikdortgen extends Sekil {
  int en, boy;
  Dikdortgen(this.en, this.boy);
  @override
  double alanHesapla() {
    return en * boy.toDouble();
  }
  @override
  double cevreHesapla() {
    return 2 * (en + boy).toDouble();
  }
  @override
  void selamla() {
    print("Ben dikdortgen sınıfındanım");
  }
}
class Cember extends Sekil {
  int r;
  double pi;
  Cember(this.r, this.pi);
  @override
  double alanHesapla() { return pi * r * r; }

  @override
  double cevreHesapla(){ return 2 * pi * r ;}

  @override
  void selamla()
  {
    print("ben cember sınıfındaım.");
  }
}
