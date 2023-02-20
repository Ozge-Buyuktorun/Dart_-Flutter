/**
 * Exception Istisna : İstisna, programın çalışması sırasında ortaya çıkan bir sorundur. 
 * Bir istisna, bir çok değişik nedenden dolayı meydana gelebilir.
 * Bir metot, try ve catch anahtar kelimelerinin kombinasyonunu kullanarak bir istisnayı yakalayabilir. 
 * Try/catch bloğu, istisna oluşması muhtemel kodun etrafına yerleştirilir.
 * Ayrıca on ExceptionName{} blogunu cıkacak istisnanın adını biliyorsak kullabiliriz.
 * Finally blogu istisna çıksın çıkmasın calısacak olan method blogudur.
 * throw ile hata cıkan yerde kendimiz hata fırlatabiliriz.
 * Kendi istisna sınıfımızı olusturabilirz. Olusturdugumuz istisna ile ilgili sınıf implements Exception diye tanımlanır.
 */
main(List<String> args) {
  print("program basladı");

  try {
    int sayi = 100 ~/ int.parse("emre");  //~ işareti ile double değil sadece int kısmını getirir.
    print(sayi);
  } on IntegerDivisionByZeroException { //bu hata görüldüğünde çalışacak kısım.Mesajı kendimiz yazacaksak.
    print("Bölen sıfır olamaz");
  } on FormatException catch (e) { // tanımlı mesaj ve source görüntülensin istiyorsak.
    print(e.message);
    print(e.source);
  } catch (e) { // eğer bir hata oluşursa devam et kısmıdır.
    print("Hata çıktı ${e}");
  } finally { // bu blok hata çıksa da çıkmasa da çalışacak yerdir.
    print("İşlem bitti");
  }

  print("Program bitti");
}
